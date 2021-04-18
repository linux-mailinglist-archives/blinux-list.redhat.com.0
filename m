Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 33E263632DB
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 02:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618705634;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4Ip1Fw/URDxnQ8Yh+8o6dQJm//CEZNsuXsEgpReMwC0=;
	b=RBLDzMBhm1udac509n7OfSvGwQhf0meUArcUoACX0tB6l6s5g3Nwqx2WPHBrclvUzRxtXt
	DIVRqWCyB5L03T3THZ5fIx5COsk+CVvFEkDA/h5eMOzE7bsjmna4Zrp9zcN7EFTWVLffYj
	Y2bPTRTYDGMJPhbpGZEPvHw91idtjlU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-515-UzwxGmyGNB295_Zs2rKKVw-1; Sat, 17 Apr 2021 20:27:12 -0400
X-MC-Unique: UzwxGmyGNB295_Zs2rKKVw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2FF7F18397A5;
	Sun, 18 Apr 2021 00:27:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E93F1002388;
	Sun, 18 Apr 2021 00:27:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5268E1806D0E;
	Sun, 18 Apr 2021 00:27:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I0QLEO003043 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 20:26:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8B2092087A4B; Sun, 18 Apr 2021 00:26:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 851462087A49
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 00:26:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C2AF9811E93
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 00:26:18 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-441-G6jZDREPMxuNLXhkiSf4_g-1; Sat, 17 Apr 2021 20:26:16 -0400
X-MC-Unique: G6jZDREPMxuNLXhkiSf4_g-1
Received: by mail-qt1-f169.google.com with SMTP id o2so10242961qtr.4
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 17:26:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=MAyUAUku9GgpKhQ/J4cTvEg5ohUfXSbAyCFizkNnUSM=;
	b=qVzvisB0EkcyI0160bSzyOWNknZtsigSYta0bfStG46uktynlQNaMMXsQa9Jva8r79
	UcDQS/KKhddecJ50mhaNlnOdPuXS3VnogxtQFDWr6tZW5xSUzjwCOMkxmz68GVQHjLBz
	XyyP3EAoJh7kqZQOVXd74NEe75rl6+zJD05DvgO9oC9v26t1TYguQxIqRj43O5tvSmmU
	NpT9rTybr29aZhDyNc90z0azAyz6lUgCeh0LRl1thBlhox1Mwo4lTJL7W18xB3uBY2yo
	oW8v4MvKt6PfFNEmBea5fiMKTKxQx1zr9543GnYkjhIIcFKSuoG8VhoJkLHMpazyDl8L
	XmaQ==
X-Gm-Message-State: AOAM532c+hucUShpTrGv/5BaFM2i+QWLYkUmi72sNYGHZh/1bp186iv1
	1T3QVIMUGnhQS94cWTgytjzIh0PeUpuBP+6lalBh0rs3Osc=
X-Google-Smtp-Source: ABdhPJyjvSo78AqbNHLJ5IhdXxqMyAQGygmnxFMKEBvCWQbPBM5y1YeTmZUuOPWPTcL4+zWhQARUjKZGoJrs3UxrycI=
X-Received: by 2002:ac8:5f10:: with SMTP id x16mr5812291qta.6.1618705575731;
	Sat, 17 Apr 2021 17:26:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:eb4e:0:0:0:0:0 with HTTP; Sat, 17 Apr 2021 17:26:15
	-0700 (PDT)
In-Reply-To: <e7dcbd70-2c5c-be37-b82d-ce5d3a491b4@hubert-humphrey.com>
References: <69EB40A9-8E3F-4908-AFFE-92B5E52C7FBA.ref@yahoo.com>
	<69EB40A9-8E3F-4908-AFFE-92B5E52C7FBA@yahoo.com>
	<e7dcbd70-2c5c-be37-b82d-ce5d3a491b4@hubert-humphrey.com>
Date: Sun, 18 Apr 2021 00:26:15 +0000
Message-ID: <CAO2sX3142Q8v8jJPLEjis-bQyMOT8fKKgMcKghqCxLt0qyybrA@mail.gmail.com>
Subject: Re: Voices
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

As far as I know, very few TTS systems that can run under Linux are
directly compatible with either Orca or Speakup... Orca mostly uses
Speech-Dispatcher as a go between, and while espeakup bridges speakup
specifically to espeak/espeak-ng, speechdup can bridge speakup to
speech-dispatcher... As such, if a TTS has a speech-dispatcher module,
in theory it can be used with both Orca and Speakup.

That said, best I can tell from a quick search in Aptitude, Debian
Testing Main offers Speech-dispatcher modules for espeak, espeak-ng,
Cicero, festival, and flite, and it's likely there's at least a couple
more in Debian contrib and Debian Non-free... can't speak for
availability under other distros, and I've really only used the
espeak-ng module.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

