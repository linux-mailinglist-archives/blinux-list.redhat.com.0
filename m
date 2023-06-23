Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A20573BE93
	for <lists+blinux-list@lfdr.de>; Fri, 23 Jun 2023 20:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687545958;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3Zh2h0yzjz1fOKgaxRow4NUs2OdS9o8LSd07oamfdoc=;
	b=F7TvaUs8NqsKDXofr3+VSLcdxiVAKGISelNNmReigdmS1/SgvitAv41qLdyLiqBt0NcFsC
	iHuyH7YgC4G+8Kr11WfPV36MXrvlqgYMvqTXBP34LhzqlFZpOftdSkM6/myeF70H44UzmA
	3MXvFob6VygsnVdiphnWwIwwTMBxMio=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-574-9RSFGXCrPyuY8nGkD5XCtA-1; Fri, 23 Jun 2023 14:45:56 -0400
X-MC-Unique: 9RSFGXCrPyuY8nGkD5XCtA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F4548E44EA;
	Fri, 23 Jun 2023 18:45:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DFFBFC1ED97;
	Fri, 23 Jun 2023 18:45:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4C4A01946594;
	Fri, 23 Jun 2023 18:45:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Fri, 23 Jun 2023 11:38:42 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: mtg: A utility for toggling the monitor state on Linux
In-Reply-To: <mailman.1745.1687543983.653864.blinux-list@redhat.com>
References: <mailman.1745.1687543983.653864.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1792.1687545952.653862.blinux-list@redhat.com>
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
Cc: orca@freelists.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I am wondering, will your "mtg" work in a console only system? I installed 
Cargo from Debian-and-from your README instructions, ran
cargo build --release -q
either with or without sudo, it just sits there-and-creates Cargo.loc and 
Cargo.toml. Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

