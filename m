Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 061924A302D
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 16:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643468671;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8P5WgLKhmzoQ+ZU56iWRwT3/Hi0nUK+dJXjWuyEuYHI=;
	b=Jh5g/7+mPKvaec/LK8cc9XmxdJEn1GCNxvladUI20EhUpt0CtXkZ7MPiTAdXPWW4NjFJF5
	NyJw9TNZHkLI/yKhyi4J5naHERoSvvzT6AlrSVprgrYFaam4OIs26ym7ed4E5A2BEPbLdr
	2WiC7SuHI6cIecO4+oE3XcVcmBFzDfA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-487-RnChesApOVCdxUQvzD8EHQ-1; Sat, 29 Jan 2022 10:04:27 -0500
X-MC-Unique: RnChesApOVCdxUQvzD8EHQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 595C4801B1C;
	Sat, 29 Jan 2022 15:04:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 119242379B;
	Sat, 29 Jan 2022 15:04:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 38EAE4BB7C;
	Sat, 29 Jan 2022 15:04:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20TF48aq018724 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 10:04:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4F2A7740A; Sat, 29 Jan 2022 15:04:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B1EC53DB
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 15:04:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D49351C05AA7
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 15:04:04 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-455-LJsatbrXNFiS-1TXiyQhVA-1; Sat, 29 Jan 2022 10:04:02 -0500
X-MC-Unique: LJsatbrXNFiS-1TXiyQhVA-1
Received: by mail-ed1-f45.google.com with SMTP id r10so16683925edt.1
	for <Blinux-list@redhat.com>; Sat, 29 Jan 2022 07:04:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:to
	:content-language:from:subject:content-transfer-encoding;
	bh=W/1zJFLREcCg78Kr0XAeMBlTOoy2vESMq666OMzlOqo=;
	b=NccnOvTxMoDfm8kHIrr/ZHqpkBsepx3MOPR80WV/RG3amNZA3I3gH2n5qT4PREFSps
	ZEF67W6toiA+fWO95A59WEUCayGszBYRFLyYQrYNZm3Ogrq/xjPVFffwCpQ/VW3Syjuq
	Ouu7Ogeftcw3rQg3Ju/J423eJtuNmSnOwmWU2KbYY8W2lPx5n0dCSvgimfRChuPvQkL4
	kgEe14oWHWrLl4dCkdptBrlxofYQ8HmVshAMD/xyGyj4qwLumcYHsnHLJzr/TiRqFjjS
	9kO3RDyFQVykTxQmoNONaes6cp6zsbIKcAkpVVbbNUpyX83y192sD360o1pLCcjafb2b
	ZYJQ==
X-Gm-Message-State: AOAM530J+PuAD76FAHpoewV8tk1bBG5ArExHYvMGhVWmW4aXVulsGnVJ
	ba0djyz7WUHSHDbEn8FMryD1VhPWQRU=
X-Google-Smtp-Source: ABdhPJzkmStzGU+U+fj83/JAdG4hRdKKfvi5oF+iWuTlOKUVvu3IEMrhgxguGIPpiKmT6LWmAePqDw==
X-Received: by 2002:a05:6402:348c:: with SMTP id
	v12mr13139799edc.384.1643468640952; 
	Sat, 29 Jan 2022 07:04:00 -0800 (PST)
Received: from [192.168.8.130] ([197.184.176.134])
	by smtp.gmail.com with ESMTPSA id
	w24sm7255449edu.97.2022.01.29.07.03.59 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 29 Jan 2022 07:04:00 -0800 (PST)
Message-ID: <76ca400a-9d22-df23-7de2-82c3e3a16967@gmail.com>
Date: Sat, 29 Jan 2022 17:03:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
To: Blinux-list@redhat.com
Subject: Looking for good radio software
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

Hi all,


I'm looking for either a good radio station database, GUI or TUI is 
irrelevant, or software the likes of Tapin radio for Windows, Tunein 
Radio for iOS, or "My Tuner Radio" for the Mac.


It really looks to me like I'm using the MacBook less and less every 
day. I'm unfortunately one who likes listening to music while working, 
and this is the one piece of software to complete my environment.

-- 
Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

