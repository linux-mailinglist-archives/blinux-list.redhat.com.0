Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E68524B5F40
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 01:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644886045;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QoDfzblSaWRJL+RaS4xgqpH+nY6LjbgdSZwaFjcjYIk=;
	b=BVerOFcglhAO3X+QzlaYDOpwk5KxFnBw2mH3/nQ5/B0n+wZEwCD0ltuFwOPyyTNFebgaYX
	/CFEfyCamhZ31n5bs1Vl2Vq67XbSPJNdbbfUgjkrv8e+cJg6fVfYaAEeDFFpWnOGNyXpp/
	zOghdhr3a3iv68cT40JCqHeQVOUyGnk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-569-mHrKumS4NNq0j8VTN9APmA-1; Mon, 14 Feb 2022 19:47:21 -0500
X-MC-Unique: mHrKumS4NNq0j8VTN9APmA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75739835B4B;
	Tue, 15 Feb 2022 00:47:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF517163F2;
	Tue, 15 Feb 2022 00:47:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 30D8A4BB7C;
	Tue, 15 Feb 2022 00:47:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21F0ks1v032464 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 19:46:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2AFD42166B4F; Tue, 15 Feb 2022 00:46:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 254322166B4D
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 00:46:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF39229AB448
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 00:46:50 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
	[209.85.214.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-335-AImHT3-pOQiFQHtLT2M1bg-1; Mon, 14 Feb 2022 19:46:49 -0500
X-MC-Unique: AImHT3-pOQiFQHtLT2M1bg-1
Received: by mail-pl1-f179.google.com with SMTP id w1so11841605plb.6
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 16:46:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=uXuXp2lVQWc+chmsbuCiIQsrsQ9jdjAyCkp7PsYyAMc=;
	b=jKst5QOGfxTa25YgQmR/T6hGv6iR+bRA3Jii9e3cjh8UOTTwj1BNuRgSB1Mn3ZlHH3
	D658uDRghrhytOQZUZluw9IAueVT7mbZT4uc4PTmKcH78CNeRP3G3WEAB+qPFpxlqIo/
	gZViug9Xx1R6I7sv2qwzugHpeDAwHSbrcnkZzUSpo7p7s8/au5JgmCNQPUfFQvtqBMaf
	29xQ6pfNEu+ALygBggFYzdvk5z1gnB2O05ECcW56AOY/jVIRWjEnBZugI9SJCl9FNzcv
	o5DYDsJJj6+4aTgLuCpUSb+zJ0zK3I8uRXfP49/7uS4toIETWIZCiU9A47HxNdC762Bh
	EUaw==
X-Gm-Message-State: AOAM532gzoiApDW4FVwJuNvX5gSrtGgRT+BtVHHagTlc+6xLAEqSfHMz
	m0c1TazWGOIbbQomVjRRLkB+MUZ86K0Gnw==
X-Google-Smtp-Source: ABdhPJzlaj09b35O2VkgiX64EWPAfzJPSxIhlaj9KMSE/ycftvGrLOhTVPaCuXhSZvtkma/zKIHVww==
X-Received: by 2002:a17:903:1246:: with SMTP id
	u6mr1471349plh.101.1644886007906; 
	Mon, 14 Feb 2022 16:46:47 -0800 (PST)
Received: from ?IPV6:2607:fb90:728f:4be4:35d6:4ca9:2b24:ab70?
	([2607:fb90:728f:4be4:35d6:4ca9:2b24:ab70])
	by smtp.gmail.com with ESMTPSA id
	kx5sm15099135pjb.16.2022.02.14.16.46.47 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 14 Feb 2022 16:46:47 -0800 (PST)
Message-ID: <0c4e68e4-0831-e123-a429-811005dbb3a1@gmail.com>
Date: Mon, 14 Feb 2022 17:46:42 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Coqui TTS has blew my mind!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
In-Reply-To: <71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

what is the website to hear samples?

thanks

Hank


On 2/9/2022 8:49 PM, Linux for blind general discussion wrote:
> The samples are HTML5 audio elements on the page. They're fairly easy 
> to download, but only on browsers like Firefox and Chrome. I don't 
> know if they have fallback links for text-based browsers. My website 
> has fallbacks, but Firefox, Chrome and other HTML5 browsers hide them. 
> I didn't try the samples in a different browser to see whether 
> fallback download links are present. The youtube link does offer a 
> fairly decent example of the quality of speech and sound though
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

