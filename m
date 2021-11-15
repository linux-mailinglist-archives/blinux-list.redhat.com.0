Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D53450CC6
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 18:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636998053;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ERuxn+gb9Ek54ox9Mq+Bh6lrUKuXJIuF9xFjU+Mn45M=;
	b=RJ4BfLfY6zpIf6nhRPfRNLKtIMhEhnIIiBULjbsAUi3oOWAuL/S1eVmlycdpnJ5MQkModb
	/PqJa/CUH7nrhLJSZnm/oE1Pub9juBMuAGVXDMkAOWvQ5W4Nn7kAzuMCtMZciL6LC1cH8I
	wC4LN30rOXn+Dp80Zd4FCg1y+pq8xUU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198-0bDUJ6_COfqiyMJ-tl9eIg-1; Mon, 15 Nov 2021 12:40:48 -0500
X-MC-Unique: 0bDUJ6_COfqiyMJ-tl9eIg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F9A419057A1;
	Mon, 15 Nov 2021 17:40:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CA835C1A1;
	Mon, 15 Nov 2021 17:40:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6EC941806D03;
	Mon, 15 Nov 2021 17:40:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFHeTCl002395 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 12:40:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8625F404727D; Mon, 15 Nov 2021 17:40:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82321404727A
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 17:40:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6885E800C00
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 17:40:29 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-398-ua-gBiTqN1-BsHAcuPxKKw-1; Mon, 15 Nov 2021 12:40:27 -0500
X-MC-Unique: ua-gBiTqN1-BsHAcuPxKKw-1
Received: by mail-qt1-f176.google.com with SMTP id o17so16374255qtk.1
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 09:40:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=BVoHlGikF8e+WMhYusHOlsLynNdbNr2VXy7Gq+1WnJ4=;
	b=JBZR+3v+TgsX71UnkV1TyaLAVxjV+e4omCbPrMPuRXTrruwpWutOWBC7/o+eNErBFy
	zGRaImMnKDbu6IAERRdqRhSuq7WZthKTM+PGZQjtd77NGt2ZkIXCF+MaDdVgleZn2muq
	/kKTmT15FTgKqO6VNrvbcDM0CgUfpKk5vhjnS3mJqets3TO+J6ZRMcAPpC0qFmlhV5nB
	0Cl+Dex/jMt2jlj+J1JEGcvtDlSuLz5LDF/TU39j27TWIjyAvWm6pt7KAPYZ9VUkytBm
	zAYXdQSn7RxsgEvrZv+7bqygi5gbhmAL0LHfvJR94LOC3qzUQvVgFYatdVvsNI8JlvMQ
	SQ7A==
X-Gm-Message-State: AOAM531rvWK8YutrEenu7vQTJBYPuAiEzFuILMgNyYXxLp1B2z/WptEx
	9LPTRStzVErHV09qz/8hPw+po5S+M8hRuA==
X-Google-Smtp-Source: ABdhPJykrFNRwC2ysukwIMS+yRxhcEA61PN/OxVuzdagNT1aqfsZaqTAAk43qjZ00l03bo+ZDc+8pg==
X-Received: by 2002:a05:622a:1351:: with SMTP id
	w17mr784254qtk.59.1636998026956; 
	Mon, 15 Nov 2021 09:40:26 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	196sm6668899qkd.61.2021.11.15.09.40.26 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 15 Nov 2021 09:40:26 -0800 (PST)
Date: Mon, 15 Nov 2021 12:40:25 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
Message-ID: <d5cce23-86c-16c1-f43-18a8201c9210@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 14 Nov 2021, Linux for blind general discussion wrote:

> Alpine allows opening an url in email; using the browser of your choice.
>
>
> But aside from being tied to a terminal or a text-only virtual console,
> Alpine reads email one screenful at a time, making it impossible to
> navigate by element, and making it very difficult to skip or eliminate
> quoted messages that people mostly on non-screen reader-related lists
> like to quote, requote and rerequote 50 times, which gets unwieldy very
> quickly. The other problem with screenful reading is that I have no
> access to continuous arrow navigation, a SayAll function or something
> like paragraph navigation that is usually available in desktop text
> editors. It is also more difficult to select, copy and paste parts of a
> message using a terminal, although it's not impossible. It's just not
> consistent with other desktop applications. For many people these
> wouldn't be huge problems, but my personal workflow does require things
> to be continuously scrollable and SayAll functionality to be available,
> as well as select/copy/paste functionality consistent with other desktop
> applications to be available at times. I may have a different view for
> my personal use if the message body opened into something similar to
> w3m, which is scrollable, especially since element navigation through
> email isn't quite as important as it is in a browser and I don't select
> parts of messages to be pasted into other files or applications very
> often, with the obvious exception of temporary passwords or verification
> codes, so perhaps this is a feature that could be proposed for a future
> release, unless of course it already exists and I don't know it. The one
> possible showstopper for me would of course be threading. Anything that
> doesn't support message threading would of course be a deal breaker for
> sure. I prefer all threads to be collapsed, and to expend only the
> threads I want to read, deleting the entire thread if I'm not interested
> in reading it. If Alpine can do this, I could certainly run it on one of
> my servers or in my own terminal, possibly as a backup if Thunderbird
> fails, although I haven't seen this happen in years.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

