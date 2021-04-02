Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id BAF5F352BA6
	for <lists+blinux-list@lfdr.de>; Fri,  2 Apr 2021 17:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617376526;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5agg4rWx7JPtf+s7T7g1+hAqk2IWdwKZeCgsdR9aUGI=;
	b=BNy8K1kLPs4edTvtQILBAUa4eVeh1OIU2qfGRz0MdT4gaxOthcn7i4ox1QTfcECegLKKnd
	zI2hW1qX/l39uULxvDxqki6S7F/tLLvW5NUIw9Xu6F0zIVnjBng8rFinZe04NiKwT+naAs
	ON/tr4v3N47mhAuqZjgSdiqeDZSlZNc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-552-zCizYrKWP8So67ppo1NttA-1; Fri, 02 Apr 2021 11:15:24 -0400
X-MC-Unique: zCizYrKWP8So67ppo1NttA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 34874180FCB2;
	Fri,  2 Apr 2021 15:15:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07EDE5D9DC;
	Fri,  2 Apr 2021 15:15:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 772A54BB7C;
	Fri,  2 Apr 2021 15:15:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 132FFFiA003156 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Apr 2021 11:15:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 12C37105018D; Fri,  2 Apr 2021 15:15:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E300105018C
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:15:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 730E8802C19
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:15:12 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-30-Jd_TB3eJPuGywmhkM48yug-1; Fri, 02 Apr 2021 11:15:10 -0400
X-MC-Unique: Jd_TB3eJPuGywmhkM48yug-1
Received: by mail-qk1-f173.google.com with SMTP id z10so5481496qkz.13
	for <blinux-list@redhat.com>; Fri, 02 Apr 2021 08:15:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=DtBpm9KMjwRqt+UfQLTRYY15emLPVoJsDpkDn0vyjpw=;
	b=DPR9CUDzAcYBPYG879cxa7ZG5qSnf4x8kLQ4tABfMBCH7Ox5+OwDtFO1M3Ly5yko+b
	A89avHJ3pZyyaVb8dzvjj2cM4ICAralpgBpqXbyqPp1kFjjS68DqWCslpJX3zK1Q2c9n
	1y26Jq41sOm3xGUsxuzyCEBiMquNqWuI6Gseqg/pKNww2OArxqDXg+Fu1OWj5agsHqay
	gWNLMsdljOYZF+MP4yafwWdz12twKLv8QsV9fNEEQCLzU66RZwA6aVytsrh8twhfo+9H
	KzC46c/kQGhDl+6pucox/RghCT9+nUg8VXSVxHrZ+Of0HUATL5QzPp5llvtDH4lnrTt/
	VVug==
X-Gm-Message-State: AOAM532aSv+zIK45I67CoWIPptOLXXUNOwBGhxsQzbWbXlvFoH5+1i53
	W567FolY5h6QD9vvF7hbey6fEZrXI3Nw0T4Y7QpicOwBN0M=
X-Google-Smtp-Source: ABdhPJz0YS+5wSo+ttsJz4KAkoFLQnq+sI/Dftam9uc6rLmMARjIHR/KOWgjACHut11UkJ8jGZjwOjkcbaVESMD0lQ4=
X-Received: by 2002:a37:b8b:: with SMTP id 133mr13301910qkl.401.1617376510042; 
	Fri, 02 Apr 2021 08:15:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:4ba1:0:0:0:0:0 with HTTP;
	Fri, 2 Apr 2021 08:15:09 -0700 (PDT)
In-Reply-To: <00ab01d727d1$ce7dd480$6b797d80$@cox.net>
References: <00ab01d727d1$ce7dd480$6b797d80$@cox.net>
Date: Fri, 2 Apr 2021 15:15:09 +0000
Message-ID: <CAO2sX32bXzqw5kb7PPvSLGN+_XTMurMW1SKuBOQeagpt0f4XRw@mail.gmail.com>
Subject: Re: linux and orca
To: blinux-list@redhat.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The Orca modifier key is generally set to either insert and/or caps
lock. If insert+space isn't bringing up Orca preferences, the next
logical thing to try is caps lock+space.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

