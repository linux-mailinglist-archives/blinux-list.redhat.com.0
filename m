Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 954C737BC36
	for <lists+blinux-list@lfdr.de>; Wed, 12 May 2021 14:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620821178;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HYnfxVTH2KNgfhj3Mi3jCO7rNtKADaLChKG+Ndep1Zw=;
	b=hYBhKFsXdkjq0lK3crcfmLnJi17ezSd20ixkke3+PljJQXI3XnyiNxrzDlCexeTjN0dOiT
	fvQsiBmbioIgCo+nwG+UjyYez+HPPpX1RUz+ju0MU+JmuHtJFmuwbIGCJZSgyflAxxnSuP
	F2S+4f+zfE2iVfMyGK/bLpV/mryGcMM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-536-yVS208TzNd-LDqg_kEhhSQ-1; Wed, 12 May 2021 08:06:16 -0400
X-MC-Unique: yVS208TzNd-LDqg_kEhhSQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EADC5501F8;
	Wed, 12 May 2021 12:06:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D0A2E19CA8;
	Wed, 12 May 2021 12:06:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DCCCC5F98A;
	Wed, 12 May 2021 12:05:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14CC4BqM018152 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 May 2021 08:04:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 95BC0106260; Wed, 12 May 2021 12:04:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FE45103413
	for <blinux-list@redhat.com>; Wed, 12 May 2021 12:04:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06FAB10504A6
	for <blinux-list@redhat.com>; Wed, 12 May 2021 12:04:09 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-478-8YXdW_QYPDSvCg745PNmnw-1; Wed, 12 May 2021 08:04:06 -0400
X-MC-Unique: 8YXdW_QYPDSvCg745PNmnw-1
Received: by mail-wm1-f43.google.com with SMTP id
	b19-20020a05600c06d3b029014258a636e8so2909476wmn.2
	for <blinux-list@redhat.com>; Wed, 12 May 2021 05:04:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=h4uxxgZermmyTn9A/+E+dgZC0Jf02k+3j4JlSiWl9i0=;
	b=Q5Y0/q7TNBECaqd8McWHoMVBLIBbxUcigqJ3KWlIOt0qak0N6XNZm2fsZ2Cudu6H11
	8NIS/57KJLs+G+twCul0Ez4FgHiY+GgQyFMhzzAei8bD8ELc7P5a0nwcthn+QmCXZXuX
	2KnyCWEFJ7ON0hLDA7zueI8HTvrP8tIWun2BS1oNB3KWED9pwSkpUeQgfMm8zzCXW2WT
	rTxXfa5v2Df9qQzQuZNuGRPNC23NzyTFpffCuYAon27ZTbfw/CKEBkvlv23AB3QjLXPe
	Uw//XKe9ACNtyXBIzDxNO+c9W+dRRa/r3RiAZX5nyOhA33Lbx/I93yPuTkcGQpUtWD3I
	PCRg==
X-Gm-Message-State: AOAM532gnSHFpwdtpPTnLcRY9pW8CNHrxvthWIQhAy+1fgE4LeluvHyI
	DgpEqYory5XSBzKDDPn9ZDJ8gAhJk7DrOoHh
X-Google-Smtp-Source: ABdhPJyTfOlhle5aD6kHub1r0/KaRRnRwEWZJQUBRggTdv3Qtm2Z6jJXbyijVfR7n0cSKcILwpAQuw==
X-Received: by 2002:a1c:dd46:: with SMTP id u67mr11309074wmg.66.1620821045472; 
	Wed, 12 May 2021 05:04:05 -0700 (PDT)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id
	g129sm6835637wmg.27.2021.05.12.05.04.04 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 12 May 2021 05:04:04 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Batch convert ebooks qustion
Message-ID: <3f911846-3ba1-131e-14fe-c41694c55c9a@gmail.com>
Date: Wed, 12 May 2021 13:04:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So, I've a fun question. I bought a box set of ebooks that got delivered 
in .epub format. I'd like to convert them to .txt, the ebooks are DRM 
free, but I don't want to go through one at a time. So...

Can I use ebook-convert, I can't do ebook-convert *.epub *.txt


So how can I tell ebook-convert to take all the files of a certain type 
and convert to my desired output type?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

