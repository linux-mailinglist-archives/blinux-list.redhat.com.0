Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E3E4DD0A1
	for <lists+blinux-list@lfdr.de>; Thu, 17 Mar 2022 23:19:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647555552;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4ZPz7e+rsxT5oQQODEZuc+tXMeEa2nr7EFP+7k4g4r8=;
	b=HgY0L2+n+sH3wly5Te3NBCtwDGgNqZxAFtEn37m3HG9cVLrvqFNVafMGnvO6YuPsU18UyU
	SmHGD81SYTshcLqhaY7qlS9NvKgak780acwesEsjvgA/lPcmp7rkqT2srOyEBOv7FN/Gru
	M1Vpv1Pbt9nFLrCH4vtzFpX29+GOQOI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-618-8lWqELpOOzihXGaCfFMh-w-1; Thu, 17 Mar 2022 18:19:08 -0400
X-MC-Unique: 8lWqELpOOzihXGaCfFMh-w-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D13261044561;
	Thu, 17 Mar 2022 22:19:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 52CC2492D52;
	Thu, 17 Mar 2022 22:19:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C405D192F6C5;
	Thu, 17 Mar 2022 22:19:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 17 Mar 2022 15:18:59 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: MP3 Tag  editor?
In-Reply-To: <mailman.2712.1647554312.111205.blinux-list@redhat.com>
References: <mailman.2712.1647554312.111205.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2790.1647555545.111203.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, Rob, if songs were from a CD you would rip them with "abcde" meanwhile, 
if I run an man -k mp3  here are some suggestions
mutagen-pony (1)     - scan a collection of MP3 files
mp3info2 (1p)        - get/set MP3 tags; uses MP3::Tag to get default values.

MP3::Tag::Inf (3pm)  - Module for parsing .inf files associated with music 
tracks.
MP3::Tag::LastResort (3pm) - Module for using other fields to fill autoinfo 
fields.
MP3::Tag::ParseData (3pm) - Module for parsing arbitrary data associated with 
music files.
Back again live, for some reason it devided some of those among extra lines. 
Maybe you can also try musicbrains
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

