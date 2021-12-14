Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BCB474117
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 12:07:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639480021;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Llp+MnFFjSYwsyhPkj37W8uigojLke3RMBwBHfxDySs=;
	b=JUEuV14HG+5BB8TubEHD2xH4fr2NThtBTTP/5PFI4SpnOlTNfq15kusJb67gYTOo8A7udJ
	lwgdhdWt8Hx8JdtD1Ff4DeY4psMKQIrTb/tcldiXpg2NJ84pUbXpitytsWpbqzapZP6haq
	dJh4pdOufcdsV+lBueJXlX93QONOEFE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-135-OiPvNY1APeqNMw7JrSkCiw-1; Tue, 14 Dec 2021 06:06:57 -0500
X-MC-Unique: OiPvNY1APeqNMw7JrSkCiw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74D1910144E9;
	Tue, 14 Dec 2021 11:06:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5AEE760C04;
	Tue, 14 Dec 2021 11:06:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CCEC44BB7C;
	Tue, 14 Dec 2021 11:06:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BEB6nKS021253 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 06:06:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A1EF72026609; Tue, 14 Dec 2021 11:06:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D5722026D2F
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 11:06:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9374B185A79C
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 11:06:46 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-80-0aN0m80rMvqQgEdyFR_CRQ-1; Tue, 14 Dec 2021 06:06:45 -0500
X-MC-Unique: 0aN0m80rMvqQgEdyFR_CRQ-1
Received: by mail-wr1-f50.google.com with SMTP id a18so31735188wrn.6
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 03:06:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Bymqdurl9PPiNCxKhGp0pSXDZL41/FIhMjEqTOa3VKI=;
	b=AVdk2J8Bl/EFBl9X1XnX02EHqIzo5ZbQUSy2z+O4z0IJk1rllz/bxNz8AErJNeLcyx
	Pj83uWb3dPzHE9dMCjNw6Z9CHp4gh3/DAl2aMvKhSoosnAj0L/dchquOEN2L4NaMM6Hh
	2KW9vkvclKe7GeabK57fce50j7kU5Y/WYBEGJPeKTx02rsaDnKmJ386u0hc43HQZnPdv
	4P5O3DmMZ//Xhi/26zpGjg90otuPH6jNGF0TO8yv1u0fSTSMtTBW9TWzRQbo7NX9FcEA
	Vt8bNoGxgG0ayFx+eLVephK3LPkhzjppcCJdumnBJRHLS8RybsIjDjPO82WaTWfmifHC
	A/Yw==
X-Gm-Message-State: AOAM531PjLOgMIbwM10Lwhcq8rJyoulpEQT6Lg/z1hETZjfExwsZViNb
	Z92Vmtty4kfV4UQ7oif63R6E00L23L7ucQ==
X-Google-Smtp-Source: ABdhPJy589BM9OL4uRiMbcy83OsL+dmyth2WPAQaKlo0Wux6BFMo5Bbf2WXbEstj9hCNld/3IMtQBw==
X-Received: by 2002:a5d:44c6:: with SMTP id z6mr5165596wrr.696.1639480003190; 
	Tue, 14 Dec 2021 03:06:43 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id q1sm949648wra.82.2021.12.14.03.06.42
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 03:06:42 -0800 (PST)
Message-ID: <59b554b3-32ab-e0cf-23fe-0f4847a3928c@gmail.com>
Date: Tue, 14 Dec 2021 11:06:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
Subject: Re: Attempting a Jenux install, again.
To: blinux-list@redhat.com
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
In-Reply-To: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Also IIEC, isn't Manjaro Talking 32bit only? I forgot if it was here or 
on the Orca list but I remember folks had major issues installing it in 
64bit system as well. Did that get updated or?

On 12/14/21 09:18, Linux for blind general discussion wrote:
> Hi all,
>
> I decided to give Jenux another go, last time, no matter what I tried, I couldn't get orca to come on after logging in to the system.
>
> Does anyone have any advice?
>
> Also, if this doesn't work out, is there a guide for doing a Manjaro architect install? "Manjaro Talking" got updated a little while ago, and if, as I said, Jenux doesn't work out, I'd like to give that one a go.
>
> Thanks so long.
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from my MacBook Air
>
> Contact:
>
> Phone: +27 (0)60 525 9181 <tel://+27605259181>
>
> Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>
>
> Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>
>
>
>
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

