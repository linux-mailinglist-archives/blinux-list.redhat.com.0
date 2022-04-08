Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E82374F9ADB
	for <lists+blinux-list@lfdr.de>; Fri,  8 Apr 2022 18:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649436094;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZJjYxo/XzL0eO5cuvljomqV8rWdTDzOCisw+fkaBtsQ=;
	b=b57gAYnxJKsT+LHG3DqkwxTSSgrTP8Xe6ASJbEvTZAmI5cyDFU6wXcLoVQC25ct7AhHQDK
	NkFBtkmUaQDxXc6f1yQcu5UX7NxyDBqCOF9WN1HIsB4POvia/PLp55auizF3jG63mgBE/5
	SzY4QtwJS8U7E5L+ItQdhDJ1XXrW1o8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-621-vXpAgTIcOge6fqAmkoSOMA-1; Fri, 08 Apr 2022 12:41:30 -0400
X-MC-Unique: vXpAgTIcOge6fqAmkoSOMA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 63246811E75;
	Fri,  8 Apr 2022 16:41:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4CDDCC52D63;
	Fri,  8 Apr 2022 16:41:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id ED9D3194034C;
	Fri,  8 Apr 2022 16:41:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 8 Apr 2022 17:41:02 +0100
To: blinux-list@redhat.com
Subject: Dragonfm questions/NNN query
MIME-Version: 1.0
Message-ID: <mailman.7318.1649436088.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So I gave it a shot and it feels logical and well laid out, for the most
part

BUt I'm struggling on a few things. I have it going and want to unzip an
archive from within it. In NNN I can just do that and work with atool. I
can't seem to find the keys to start extracting an archive or how
Dragonfm handles that at all, Ive only found unextract with ^(U in the
config, which I've no clue what it translates to in terms of actual keys
aside from ctrl and U. It's the ( I'm stumped on

See my main gripe with NNN is if I use it in a terminal I have to hit O,
w3m and c to open an html doc in w3m else it loads up in Firefox. Now
granted I've not tried it on a pure TTY but...on a terminal, xdg-open
overrides browser being set as an environment variable

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

