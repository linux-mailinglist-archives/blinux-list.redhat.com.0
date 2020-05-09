Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 235C31CBFD4
	for <lists+blinux-list@lfdr.de>; Sat,  9 May 2020 11:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589016623;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6NDTwZWaUmYOGOYXCE8B4rjHUBmoK1HgsY9jWM/lW/I=;
	b=gMglXC6fFJqTLZmymh8DjlYfKacD2eTfXp+caQhP259mW73pBXRZjyo5dcM+sT0I3rQZkV
	MToP+QiiMeP2VXfLd3IIM3yQ4gTp9UfX8K/6FEg+/TT3uWiHcdwsF+5j+BttNhQJIWjDdV
	wprVsZAn2AJPna1TPpQ3CeZFvhHvklE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-489-GUL3tOQSPrqtQf2N6X0fIA-1; Sat, 09 May 2020 05:30:21 -0400
X-MC-Unique: GUL3tOQSPrqtQf2N6X0fIA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A81D1895A3D;
	Sat,  9 May 2020 09:30:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF7C910016E8;
	Sat,  9 May 2020 09:30:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6C24E18095FF;
	Sat,  9 May 2020 09:29:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0499TmDa006740 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 9 May 2020 05:29:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 028661050198; Sat,  9 May 2020 09:29:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F2AC51018E50
	for <blinux-list@redhat.com>; Sat,  9 May 2020 09:29:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 80BBB1859162
	for <blinux-list@redhat.com>; Sat,  9 May 2020 09:29:42 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-20-BVYBwpMDN9ebPM-Z-LssXw-1; Sat, 09 May 2020 05:29:39 -0400
X-MC-Unique: BVYBwpMDN9ebPM-Z-LssXw-1
Received: by mail-ot1-f51.google.com with SMTP id m13so3521789otf.6
	for <blinux-list@redhat.com>; Sat, 09 May 2020 02:29:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:date:subject:from:to:mime-version
	:content-transfer-encoding;
	bh=xDB5Ldg6Nbnx/fIMdP3tZJbNC2auHInbBbSPywEIW2o=;
	b=Ihc9DRGVqmUJiWTdWSmVNq4d0BXP6nW+cQpA6Ero0M1W6YwvYMcazpfRscwUpQfILr
	XXUlc8vyUQrVCz3vMCu5TzU8hY06APH2wnEcuLp52vk8q/A+Go8BTf9hzRlZv4+d9woW
	qdMX4T8px48TwITdGdjOjTV7BEyfVNQn+D7cMY00MkfRdbXZw+5rmUSfk2DtNlVlj6/u
	eZtI1jRGf7ksB988fGazLyT80xDmKJ/3ogwMU/W532I0tj8hl7jgl39eVF9OkMmzNkQ9
	8r0+UOTVr4dszqvMk95E+yTXi4j1f4zCafyPtjaWRBZNrorON5VHzRR8y589NksTINHH
	m74w==
X-Gm-Message-State: AGi0PuaB6DJUScCzxRjBIs3F4RRopY3jX7cTPuCaaiUJ7dz4UXzkqw+9
	YVW37pB6xan81OM7RJZ4LEQtAtr2Or4=
X-Google-Smtp-Source: APiQypLuRo8dNq8ct8JI79ttg9TMZnQC9wUyHFxvUesYDJetSyrZu1KmEpM4KZ2fMJo8Wg0KszmTPQ==
X-Received: by 2002:a9d:6e3:: with SMTP id 90mr5587299otx.261.1589016578398;
	Sat, 09 May 2020 02:29:38 -0700 (PDT)
Received: from ?IPv6:2600:1702:20f0:4420:b89d:813a:97fb:a12f?
	([2600:1702:20f0:4420:b89d:813a:97fb:a12f])
	by smtp.gmail.com with ESMTPSA id w3sm1057165otg.24.2020.05.09.02.29.37
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 09 May 2020 02:29:37 -0700 (PDT)
Message-ID: <5eb67801.1c69fb81.b69f.6e0c@mx.google.com>
Date: Sat, 09 May 2020 05:29:35 -0400
Subject: Corispondent call in Thunderbird using threaded view
To: blinux-list@redhat.com
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from base64 to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0499TmDa006740
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,
Tried to send this yesterday but sent from the rong account.  Anyway, Using an exchange server with thunderbird, I am seeing a very strange item called corespondent call when using threaded view in all of my folders with the exception of the inbox.  Any one know how to get rid of this?  Disableing threaded view resaulves this, but get alot of messages and so would rather not have to do this if I can avoid it as some of the folders I have get alot of messages.  

Thanks all.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

