Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 926F449C590
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 09:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643187157;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mBktKdiY2N1cTi65tQgnTu+GBVbZQlw5nt93Yf3+2W0=;
	b=T+9VY/Y+BZNLJAp+a4CiDJ8npcl8/9vNaCyEjZmIqvWauRNdjR80yEKkGcD82BfDMY9u4l
	lsQOtsncdb6rs+1YPabLEwJn1wQVkuFbX3d5Ch08z8m5DIGsJW3kid/4BoDWNvTptgfoAG
	bS/uC1rl1YjCbA9oNbJ55oCkmotfljE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-553-U4GpGBRxNN-_c7ClNP3mFA-1; Wed, 26 Jan 2022 03:52:34 -0500
X-MC-Unique: U4GpGBRxNN-_c7ClNP3mFA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D9A221898298;
	Wed, 26 Jan 2022 08:52:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D18E45E4A4;
	Wed, 26 Jan 2022 08:52:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 701751809CB8;
	Wed, 26 Jan 2022 08:52:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20Q8qCgl015383 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 03:52:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B7EAE401E95; Wed, 26 Jan 2022 08:52:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B3AC4400F24
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 08:52:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 98F081C0514C
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 08:52:12 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-65--Gfs9GVlMjSNpj9nS6dzgA-1; Wed, 26 Jan 2022 03:52:10 -0500
X-MC-Unique: -Gfs9GVlMjSNpj9nS6dzgA-1
Received: by mail-wr1-f43.google.com with SMTP id a13so24432452wrh.9
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 00:52:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=8HonlbESLgc0yG3Fqh+RlilvGnAl/J+TonMHqW/Nl4A=;
	b=C2OY7lSrji5KWVzT9hMyngtGNZx2IEHw+NaBBv2RJEz1YiZedbEBBDOGcBLxRBncm8
	ELOcm13bNDzgXsuAt33wobP3evVB2wr1jp2uISSfV+bst8RnCDcy1OxfYIFOo871vpzh
	8bXiU1FxClRsFP7ToXKXRCplOBgyd3TC4pft0NBOsePTORVK11aqE/v01R8pxxrGXxe8
	WGfHh1FpIun2O6V1MqZTWIEH2Ny0evYLrqJ66NVUqTbRQqHpcpm0CSp1/EKidbiKbl5F
	O2aX5S8MSF984YtjHvoptFLu4vJbF48EZJM3w+CK1zhS06nHSbDFNPlA1gMtZezl3CuE
	eNPA==
X-Gm-Message-State: AOAM530GH1j2m4PdKS6ouRM9uogwOKVSsqHWsXTOEyYtPufI3sDZQbiF
	YrXZs0RNaKPq6bgRPSRmOxLy3Vj/Hm4=
X-Google-Smtp-Source: ABdhPJyPOW6pTnGSrgJVy0G6KQFb3LQ7PZiDo315myILHjhP/jKs1Op3tPObxuYOQ1OGplTaMp+vkw==
X-Received: by 2002:adf:f287:: with SMTP id k7mr16343833wro.539.1643187129329; 
	Wed, 26 Jan 2022 00:52:09 -0800 (PST)
Received: from brandt-slint.study.home ([197.184.176.134])
	by smtp.gmail.com with ESMTPSA id o8sm2421148wmc.46.2022.01.26.00.52.07
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 26 Jan 2022 00:52:08 -0800 (PST)
Subject: Re: Configuring ratpoison
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
	<20220125223958.mrokwwfhnl4uzxco@sprite>
Message-ID: <e75a9a36-2f04-008c-7a7d-48c0ab62dd92@gmail.com>
Date: Wed, 26 Jan 2022 10:52:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20220125223958.mrokwwfhnl4uzxco@sprite>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Joel,


Things are working as expected.


I bound my most frequently used apps to keystrokes, and now things are 
running smoothly.


Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

On 2022/01/26 00:39, Linux for blind general discussion wrote:
> Brandt wrote:
>> I installed ratpoison on my Slint system, and don't have either
>> ~/.ratpoisonrc or /etc/ratpoison.
> How is ratpoison working out for you? I had previously used
> stumpwm, said to be the successor of ratpoison. i3 is
> another tiling window manager.
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

