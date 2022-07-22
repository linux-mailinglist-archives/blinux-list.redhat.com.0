Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA2257E5AF
	for <lists+blinux-list@lfdr.de>; Fri, 22 Jul 2022 19:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1658511335;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VbaUmwNwXOjW7z6UOkqPitVv27yJ3wkaDRTNc2Mcqqg=;
	b=HyjOvGQcrwpkDwHvEf48AOBUaHe2JauCcE3Bfj1P9Wh2AePhQy+DvIMwdn5e9VxEEKH9Mu
	ifB26gkZ52OBK7DDud/D6Ag+NGS5oapKBwtrwMrOjNON2jnhCVFUSdJ29NO2Q9CJASt89Q
	lVyfvhIEfA+QE049UrJmdGHwjFszoKI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-193-3IJRGAmfOB-IAATofbh8oQ-1; Fri, 22 Jul 2022 13:35:32 -0400
X-MC-Unique: 3IJRGAmfOB-IAATofbh8oQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8A589185A79C;
	Fri, 22 Jul 2022 17:35:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E2F59C28118;
	Fri, 22 Jul 2022 17:35:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 75C5F1947057;
	Fri, 22 Jul 2022 17:35:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Fri, 22 Jul 2022 10:35:20 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [slint] Re: The Register: Tavis Ormandy ports WordPerfect for
 UNIX to Linux (fwd)
In-Reply-To: <mailman.35751.1658510592.111205.blinux-list@redhat.com>
References: <mailman.35571.1658501727.111207.blinux-list@redhat.com>
 <1764ad6f-992a-3067-5432-cdd7d9118064@hubert-humphrey.com>
 <mailman.35980.1658504582.111209.blinux-list@redhat.com>
 <mailman.7471.1658507923.3475251.blinux-list@redhat.com>
 <mailman.35751.1658510592.111205.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.36108.1658511328.111208.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks alot Didier. Is their an easy way of converting an i386 to an amb64? 
dpkg didn't like this one.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

