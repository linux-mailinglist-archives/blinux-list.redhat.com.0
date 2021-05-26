Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id DF7D5391DB2
	for <lists+blinux-list@lfdr.de>; Wed, 26 May 2021 19:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622049374;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iYd+s09jFHT7nTZvk/GX2nZYdEpNsFjz/+80CsdPv4Q=;
	b=dNqXbBKNbFpZNqQnUL/sWeuqnSRfBqH3ThQJM5a8rICiBZqR47ypXvu55I2qgr1zc2RzKw
	4uIOYYRd6T0x4qlAdaDPGcdYaxAW2MhJHl8WW+zq2Oddd6X5P2CVxOfo2t1LgdBPmf0IxU
	Z9ckxddPh16TNOC6CZ7hqhyKu4tCXa4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-NNtyZDzQPlOpmmssO7ajhg-1; Wed, 26 May 2021 13:16:11 -0400
X-MC-Unique: NNtyZDzQPlOpmmssO7ajhg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6B4418189C5;
	Wed, 26 May 2021 17:16:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A63E718BAF;
	Wed, 26 May 2021 17:16:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EF3C65B41B;
	Wed, 26 May 2021 17:15:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14QGmM4O016102 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 May 2021 12:48:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 456E9104845; Wed, 26 May 2021 16:48:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 411561132E
	for <blinux-list@redhat.com>; Wed, 26 May 2021 16:48:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 835878339A1
	for <blinux-list@redhat.com>; Wed, 26 May 2021 16:48:19 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-473-3Z0kU7evPsKcLUGA9p5ONQ-1; Wed, 26 May 2021 12:48:16 -0400
X-MC-Unique: 3Z0kU7evPsKcLUGA9p5ONQ-1
Received: by mail-qk1-f175.google.com with SMTP id v8so1658390qkv.1
	for <blinux-list@redhat.com>; Wed, 26 May 2021 09:48:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iCP9uF06sLDpL5MCIE1DDZdBKSICiafCXEZq97YyAAE=;
	b=AcDarqTFzx2SSBPXbTVCBorpPoMgbqoqHMLad3RiN+xnGArntzwFC9t/YcH/oq4h6Q
	4RKJq9XnWfhkv7O3VMG89SY8Ige226NyWFWcQ2liIYHpCHOHqzB0IbuaMF9r0WcYGMBB
	SKDpYlqgD0FvUdsReJcomLPrpwnuc0Pz45XC1dzDCN9PJNuBrGEOiRz1x6MpYiErBtrs
	r3m+wIW1ryVnncXYq8r+z6ok2SlLNfswdKm040cKevgbglMEB/8x5Eug0GTjleQIfS5s
	fMgBJIs4G9g+8NLjXTMAR1lLhuYOjTuVTw/2ffhKI2bdfMJFOri/0fKXj4ZoGrtnlhoy
	hhwA==
X-Gm-Message-State: AOAM531DKJE68DWwPLh/oPIpgegfp4pemQu4J8m5AauyIBBJz+07xdnR
	l05Eoh1+jKSapCW+bXa2LyDba6+oct4lt3Hrf/69LAmOM0w=
X-Google-Smtp-Source: ABdhPJzAcdhPuRTLJug6de8+58iVs/+S3ifqXDfBXY5UntBTzy0WIsr0/ifk08vAKB3V3iQ6o3Kw0jxTce3uzFaPRtg=
X-Received: by 2002:a37:c4d:: with SMTP id 74mr41756921qkm.264.1622047696116; 
	Wed, 26 May 2021 09:48:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:293:0:0:0:0 with HTTP; Wed, 26 May 2021 09:48:15
	-0700 (PDT)
Date: Wed, 26 May 2021 16:48:15 +0000
Message-ID: <CAO2sX31bb2qOf=erBYE2ZQtnKpTYkFMOx8ynLHnvztRYQh=rjQ@mail.gmail.com>
Subject: Crawling a website for media files.
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so I've known for a while that someone has been recording audio
books of two completed works from one of my favorite web serial
writers. Thing is, both works in question span hundreds of chapters
and the people doing the audio books don't, best I can tell, offer any
convenient means of downloading everything they've recorded thus far,
and I don't like the idea of tabbing through and control entering over
100 links for one or going through a couple hundred blog posts and
locating the download button for the other.

I'm using Firefox-ESR 78.10... Deos anyone know of an accessible
browser extention that can either download all of the media files
linked on the page in the active tab or recursively download media
files from the current page and pages it links to on the same domain,
ideally by adding a "Download All" option to the context menu?
Alternatively, anyone know a command line tool that can do this,
ideally which can read URLs from a txt file?

If it helps, the pages I have bookmarked for the two audiobooks are:

http://www.mediamdpodcast.com/pact-audiobook-project/

http://parahumanaudio.com/

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

