Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A88D4634EA
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 13:56:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638276985;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Nx+M2hcc0xVEbbhj2tgREGzQ4ZkRrWjP8EjTygIkCWw=;
	b=LASNjxQMJqaH2nM9UNKSODQ5RoQL08f+ElksCuS5Hvu/ssIPvJ2rXkQGrpOA+eeZxUhpMk
	bP0V+aLc38E8VjcMbsZKsL+eEk7+4rhryLqi0oiojB6P2pb8+SeUPukZt0afzVHx3VLacK
	pKMFXO81QDxwAD9kYceMnqbyYGIilSc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-235-8hLoTtCVPXKdBymQ5NKD1A-1; Tue, 30 Nov 2021 07:56:21 -0500
X-MC-Unique: 8hLoTtCVPXKdBymQ5NKD1A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8E1A3801B17;
	Tue, 30 Nov 2021 12:56:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B11860854;
	Tue, 30 Nov 2021 12:56:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D7B9D1809C89;
	Tue, 30 Nov 2021 12:56:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUCtCEt013064 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 07:55:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 51B861121315; Tue, 30 Nov 2021 12:55:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D305112131B
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 12:55:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F5F0800882
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 12:55:09 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-365-o2tOBoS2P3SibrI6Km17Gg-1; Tue, 30 Nov 2021 07:55:07 -0500
X-MC-Unique: o2tOBoS2P3SibrI6Km17Gg-1
Received: by mail-ed1-f45.google.com with SMTP id y13so86246978edd.13
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 04:55:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=mZ8m5mFo3Tp91pz2T+sZOCpNO9RPasn3ppctqvsbZZY=;
	b=3CxW9DJpsm7Pg1NI55zLLEkEMtUM58V5ymr26KFj+aq4k3jvgfoO5Vxsq+hS5FNIXf
	aWJ7Assik9GvMYyb1H5njPhBns7WgJSoISDB9v1JelzeX4ou3HYrcYpK8YVAqeaWrhVU
	zf8hp5hn+HEeJY8aijYZkkD5+rxQjzeXLAZbPEnyGgs2H/Rh2DDnmbXai8uTU1SaI5m6
	cV8lWH93HD0gESoRd3QZEx9j7pxl0uHQw9U9vG2s6s9yv/tHeIhCapAA9wpii4AkgZ9Q
	2GClXgWrID4tvZYwGPXxRhpBmk7CGnhWRIeAg9WcNDaBSMHO03wTLp0ork7tsq6W/2s/
	aKTQ==
X-Gm-Message-State: AOAM530opweLnU01zwMEGUk0JwKP5q5Jm6JrGEqWBKM+Im/Jrz8DUMyF
	NqymxO6r3mErdSo7WD5kMCJoId9CKr2DDQ==
X-Google-Smtp-Source: ABdhPJw7LfWe6uw3l5Ug5l7hNavhj61vj/iF2ZUqZq1r//c5JAdjmd/vgvvchMU3rFdpiOXSpfkqOQ==
X-Received: by 2002:a17:907:160b:: with SMTP id
	hb11mr69323122ejc.336.1638276905944; 
	Tue, 30 Nov 2021 04:55:05 -0800 (PST)
Received: from [192.168.8.130] ([41.216.201.233])
	by smtp.gmail.com with ESMTPSA id
	sh30sm9176643ejc.117.2021.11.30.04.55.04 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 04:55:05 -0800 (PST)
Message-ID: <14705b4c-bcf3-0b86-d90c-ad11da3ddc1a@gmail.com>
Date: Tue, 30 Nov 2021 14:55:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: My qemu error
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


If anyone could please help me fix this? I really have no idea what I'm 
doing when it comes to scripting at all.


First, below is the errors I get, see between the quotes.


"

qemu-system-x86_64: warning: '-soundhw hda' is deprecated, please use 
'-device intel-hda -device hda-duplex' instead
audio: Device hda: audiodev default parameter is deprecated, please 
specify audiodev=pa
audio: Device hda: audiodev default parameter is deprecated, please 
specify audiodev=pa

"


Here is the script I used, I don't recall where I got it. I know it does 
work under Slint, but not under Fedora, Arch or Ubuntu.


"

#!/bin/zsh

cd `dirname $0`
qemu-system-x86_64 -enable-kvm -cpu 
host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time -m 8G -smp cores=2 
-soundhw hda -device intel-hda -device hda-duplex -audiodev 
pa,id=pa,out.mixing-engine=off,out.latency=20000 -hda windows.qcow2 -nic 
user,smb="${HOME}/" -usbdevice braille -boot c

"


-- 
Warm regards,

Brandt Steenkamp

Sent from the Fedora machine, using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

