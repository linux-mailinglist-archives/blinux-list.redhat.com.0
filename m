Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 979BE45D170
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 00:56:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637798173;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p8+tlTH9LAWwfgQ26Knu+AIGdFHVeoITgz33GBFj67c=;
	b=gV+rX+nfZPsJtXffTWzGYyH1UHiPPfupBgGd4qmg1i7KyMBBX6bOqPX0FEwkO6KrjI3ok4
	qlLCi+FlcIfrvi3TRsm0bZ35blwS9epJEGFn+OTtSAPtj5cGWWQUKaTgfkCv0HKDapcKDb
	uYOnUVoQqCTFnHzRfus9fHr+48cl7m4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-25-LqdbdccFNR2iAUPCyej2Iw-1; Wed, 24 Nov 2021 18:56:10 -0500
X-MC-Unique: LqdbdccFNR2iAUPCyej2Iw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4218685B663;
	Wed, 24 Nov 2021 23:56:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE47C2B179;
	Wed, 24 Nov 2021 23:56:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2568C4BB7C;
	Wed, 24 Nov 2021 23:56:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AONtxpu001078 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 18:55:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 58E8F2026D48; Wed, 24 Nov 2021 23:55:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 542282026D46
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 23:55:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D04885A5AA
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 23:55:56 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-298-0pdUh6FtPWuACaqHeb6lug-1; Wed, 24 Nov 2021 18:55:54 -0500
X-MC-Unique: 0pdUh6FtPWuACaqHeb6lug-1
Received: by mail-qk1-f169.google.com with SMTP id m186so6303150qkb.4
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 15:55:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=/eNUWTp69CV1MIyA3GHYYP620jJS5w0rrFjlYc9p27A=;
	b=uECmHVxD8tQEVMSAIU/lq2OVGyZQEo+Y0/pKcuuedi9uRK4rfhrhHUjx0gTooACg2o
	oKJGOSPCz/pVBZmuoptL1Jdl0fsvp9EgYMHCERWiZUCSvi6L43aMrVBNlz3WkMJ+rEtI
	tVglnCLrNzthMDQdzl8qjeLLGaQj5TNdLwFb9XS50vx6CvxR2LnDjet0Sq52U5YvKhEE
	80wKFVNo5VDfHZoVxBcsx6M8Ykv8w3bQABrCyXbwRiMLFDbiKUgkq+8t8ydhrgu59iq6
	7Bt5r+KWdAjRAVPNdlloPRMlHfMyWsMqnRyc1JWIkPdYYbUyLoY9szpzkuBSWw36zjsR
	/T9g==
X-Gm-Message-State: AOAM532FHsbDCqbv2JVIkQJnTDfT23BhnKv2CN5OocI9bt1gJUgI6//D
	qmW/mRWHynUzEKJOTCRl1EEO3lQ3so0=
X-Google-Smtp-Source: ABdhPJxFTvdH8RtXbw4nx6IhVsxzqqF/zmM/qDHDwnSwO3O15pxJKGwg7vDMeMk1q90izcEZv729tQ==
X-Received: by 2002:a05:620a:4141:: with SMTP id
	k1mr2592814qko.628.1637798153964; 
	Wed, 24 Nov 2021 15:55:53 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id i7sm674407qkn.0.2021.11.24.15.55.53
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 15:55:53 -0800 (PST)
Subject: Re: Fedora and virtual machines not starting
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
	<2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
	<d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
Message-ID: <f1953152-1ebc-0f21-7f23-db9a329ec5fb@gmail.com>
Date: Wed, 24 Nov 2021 18:55:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So I just tried 34 workstation in gnome-boxes, and I have the same problem. I 
actually pulled this one down directly from inside of the gnome-boxes 
application itself. My best guess is that pipewire doesn't like virtual 
environments or something. Gnome-boxes is known to have extremely laggy audio, 
but I've never gotten dead silence from it until now.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

