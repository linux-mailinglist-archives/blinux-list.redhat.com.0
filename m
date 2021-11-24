Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 338A645CA34
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 17:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637771926;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IlYQKmpWd7KVdOwsAQTIBwlS9/sRfO1PATfQ1hhQwhk=;
	b=GzyJPc/ibD0ILNV/tYB+SnZHjmbtjTeQskOeFvTH1nHHV+UfLCoxXCAEftyrGDqKRcGCy4
	G+PQS+bZiVDBdUb2U0QYcpvQ/mQsAIlergTmm95zNiw/o4icf1Yo8wlXcsMvZcFWKH3Bkp
	t2BkRdiaHeINIUC8NFEiLXJ8etMzKqI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-418-Xb-Nz5QhP4Sfy2fYkyj6rg-1; Wed, 24 Nov 2021 11:38:42 -0500
X-MC-Unique: Xb-Nz5QhP4Sfy2fYkyj6rg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 20F171800D41;
	Wed, 24 Nov 2021 16:38:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7D4C5D9C0;
	Wed, 24 Nov 2021 16:38:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 173CE1809CB7;
	Wed, 24 Nov 2021 16:38:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AOGcW5M001255 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 11:38:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CC2771121315; Wed, 24 Nov 2021 16:38:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C74191121314
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:38:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6FA0310665A0
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:38:29 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-558-rGUNozq3NH2ldmsmeDabRA-1; Wed, 24 Nov 2021 11:38:27 -0500
X-MC-Unique: rGUNozq3NH2ldmsmeDabRA-1
Received: by mail-qt1-f176.google.com with SMTP id z9so3187348qtj.9
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 08:38:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=nDfrGmOwVszuRvU8gmZtQWiXm3KOQy4HIYaywYCaM4g=;
	b=yhsN2ZxyOaGzI1xZcFTwUjFC9QZ585uWZa8wYCgmHw8tHymc6irGHkrARnyXzrMTEO
	tk1b6RWLCj6iygESuX3WsLhsgZV5vMd25G4ZmEMV6Z05kyyxUI/Pe2odXbZ0z59bH/Rt
	ZDzQ3ou2pFGh9SUL9x4apZUH71icbF95svU3ynOPNYnb/9ohT21+LpydflYitUYOJJx0
	JyJMo+Y0G96W6+EH5jIM6d5upy3T513yPkyPmoAj1a7VTWF9YJObjxeQ1wOuc+grjY6S
	1GD2HrAuBZHX5Epxs2XjnPFewYHg+S2NLRWRBPAs4G+7cLxSSJkhCdBP/CdJSBXA6s5g
	OFrw==
X-Gm-Message-State: AOAM530Q4xOwpQ0WOlivXAE/j5S/9GLjUy8FGUngYkjYXZmKhmOlWbCs
	IK+wgyf4WZXGNpnXj7TF123KkBQXo8w=
X-Google-Smtp-Source: ABdhPJysbrWO/vJu4gNtacQFmMz8L77AbDVHUe0MxfuYpzUyHcg1tNspXdnGuTOG6O3Tt841T+gwRA==
X-Received: by 2002:ac8:5d8e:: with SMTP id d14mr123835qtx.622.1637771907094; 
	Wed, 24 Nov 2021 08:38:27 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id s2sm137564qtw.22.2021.11.24.08.38.26
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 08:38:26 -0800 (PST)
Subject: Re: Fedora and virtual machines not starting
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
Message-ID: <ef07585e-1400-53a6-a33d-5b2a0f3d50b9@gmail.com>
Date: Wed, 24 Nov 2021 11:38:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm not familiar with quickemu/qemu, but it seems possible that maybe you don't 
have sound hardware set up for the vm. Qemu can emulate sb16 and es1370 if I 
remember correctly, and I've had the best luck with es1370 emulation. Hope this 
helps.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

