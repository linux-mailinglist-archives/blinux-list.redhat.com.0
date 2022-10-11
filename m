Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCEF5FAA69
	for <lists+blinux-list@lfdr.de>; Tue, 11 Oct 2022 04:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665453645;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rMFdaT+lv3P6pQI6dOt3F5Nph0Lw/Dra9gzFiRmLrp8=;
	b=DDY4ZAri298+P6elNkO6JSnfpZ/5pmOfH4Rsq/mx+MfcJmzMouzKbIxL8K54c+IyaR1gKP
	HLrIsT0CxiOfuA4gmbZLz6Ry+pJGTSJSNDuJfLTdY0hHh0A7mbhoYAPEf4WprpubhEg4kF
	emn7k5tB/nmE2goy1RCQEEbLiLpQLYs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-215-WKw5lbD6OhySAmcORovexg-1; Mon, 10 Oct 2022 22:00:41 -0400
X-MC-Unique: WKw5lbD6OhySAmcORovexg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0A74585A59D;
	Tue, 11 Oct 2022 02:00:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DBAC2492B0D;
	Tue, 11 Oct 2022 02:00:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5089E1946A48;
	Tue, 11 Oct 2022 02:00:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: TDSR?
Date: Mon, 10 Oct 2022 21:00:29 -0500
References: <mailman.6579.1665417367.6077.blinux-list@redhat.com>
 <mailman.6597.1665417915.6081.blinux-list@redhat.com>
 <mailman.6601.1665418715.6081.blinux-list@redhat.com>
 <mailman.7185.1665419482.6076.blinux-list@redhat.com>
 <mailman.6853.1665423932.6082.blinux-list@redhat.com>
 <mailman.6257.1665425449.6074.blinux-list@redhat.com>
 <mailman.6598.1665425923.6077.blinux-list@redhat.com>
 <mailman.6894.1665427256.6075.blinux-list@redhat.com>
 <mailman.6535.1665427942.6079.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.6535.1665427942.6079.blinux-list@redhat.com>
Message-ID: <mailman.6565.1665453633.6079.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thank you.

> On Oct 10, 2022, at 13:51, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> One of the best ways to get Fenrir into Fedora would be via a copr. These are essentially community repositories created by users. But then I believe Vojtech Polasek who as I recall works for Red Hat is in the process of making a Fedora spin called Fegora that will come right up talking out of the box. I'm fairly certain that he already has a copr or another form of repository that can host the package, so it may be better to contact him to get Fenrir included on that spin, and it should filter into the main Fedora repositories from there I would think.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

