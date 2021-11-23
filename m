Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B900545AD6F
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 21:36:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637699797;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6y1lT3vikiwf+VLWjw2dB7CgbjYdEB2v8ozSDp4zmOE=;
	b=Lu3B+aItPHxvDqaMAIfIMp/yUlnX55HEN9vXCRj2LySvYTNcyy2lTQIV+mcs6pwzWoPw5/
	r9mCDSUiwx9B/C6T4XUx1lnKIblmmLX8ULjzJaOpSRB4uT+vGxl/m9ZYp6nrBsOMs5CmsL
	o2w5heh6KcrjKc9Iy6qPXRxCEw/SWfE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-15-3iaJRttkNvGEQ42UythUIw-1; Tue, 23 Nov 2021 15:36:32 -0500
X-MC-Unique: 3iaJRttkNvGEQ42UythUIw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 403B41006AA1;
	Tue, 23 Nov 2021 20:36:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B0CC16788C;
	Tue, 23 Nov 2021 20:36:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E684C1832E7F;
	Tue, 23 Nov 2021 20:36:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANKaJrR008776 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 15:36:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2DC431121318; Tue, 23 Nov 2021 20:36:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 296021121315
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 20:36:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B83E8011A5
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 20:36:16 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-407-aBOE9xFdPii5qOTNA0Il2A-1; Tue, 23 Nov 2021 15:36:14 -0500
X-MC-Unique: aBOE9xFdPii5qOTNA0Il2A-1
Received: by mail-ed1-f43.google.com with SMTP id v1so410292edx.2
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 12:36:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=vCzON5TdL7Hs8kMjDYi2y6/BhAKFdw0tNyZ+Ti1dJzE=;
	b=Z3qDCoYa9EtEHI5aW3zMtTNjiMqIT3fSr1qKVByIiU9UG2XRHtIvZ3JkwDc5KjSEcz
	ejJQ3MhtiTMq1D4QHsePCE0D8SrzpETs58duJS0COV8JDN0bdB/eiiqvNjCfI78GFbUG
	TZaK1uM98OW4aWGMHD66CQghdEMDi5iOB26j3V1ZbYF8ehJvVvdKBt+QU18Kwg+LaoCQ
	niEpgdlwgvSCt9WiuUPkmRzwVluJrPzIQj3H6+vtbdd3PgeGMc4iEIfh8lgNGmVHHnjH
	1wTASHga3nur00qPw+49NKJPCqm3tE8v93zcMUZlF/Df7czw6if+kXdthgTHVMM/wKR0
	S7Ug==
X-Gm-Message-State: AOAM530t5igHOsifKNwYzfrqQ4SaNbCrsVZxUGAJ8K8r3lbyRuZtTjtC
	+WSmFgokeoEidotNe4JWyN3784CMG86PbA==
X-Google-Smtp-Source: ABdhPJwyh1J2wSpeHWcIZFSvSKayVKzghvx4LVx6hxKJn3xyzKF/FB+nUzsZf9GNx0f+z28/yDJQNw==
X-Received: by 2002:a17:906:bccc:: with SMTP id
	lw12mr11329948ejb.128.1637699772699; 
	Tue, 23 Nov 2021 12:36:12 -0800 (PST)
Received: from [192.168.8.113] ([41.216.201.125])
	by smtp.gmail.com with ESMTPSA id
	mp5sm5950729ejc.68.2021.11.23.12.36.11 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 12:36:12 -0800 (PST)
Message-ID: <02a34ed4-184a-4d89-44c8-fc8b2b69f623@gmail.com>
Date: Tue, 23 Nov 2021 22:36:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Issue with Qemu VM startup script
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I have a Qemu VM that I use for when I need stuff done in Windows, which 
is not very often, but, there you go.


There is some issue with 'soundhw' being deprecated, but as someone with 
very little scripting knowledge, I don't dare try and fix it myself.


If anyone can fix it for me, I would really appreciate it.


#!/bin/zsh

cd `dirname $0`
qemu-system-x86_64 -enable-kvm -cpu 
host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time -m 8G -smp cores=2 
-soundhw hda -device intel-hda -device hda-duplex -audiodev 
pa,id=pa,out.mixing-engine=off,out.latency=20000 -hda windows.qcow2 -nic 
user,smb="${HOME}/" -usbdevice braille -boot c

-- 
Warm regards,

Brandt Steenkamp

Sent from my Fedora Install using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

