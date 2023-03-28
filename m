Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E11366CB2F2
	for <lists+blinux-list@lfdr.de>; Tue, 28 Mar 2023 03:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679965315;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r/+gXqWWhPdwcxhRG0F1pjCWQFt2E9a+wdCunCCyv18=;
	b=d9prlWpciiooK8vc7uS3V1VbFLfpr9DHm9mXtjLRcrsElYa5uDY081h7gz/OPrJWGpiMLh
	iSpTr4MkBW1I41GCQKsdZv+XmDnhhKKu7cYXCMevMMcXIB765UYz/dz1C2B8UvNbi6Iy6i
	ktDLHxXniocJEwgWfcQfr//dPEzveCQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-647-0biRUml7P7G4vyWgDRw_Kg-1; Mon, 27 Mar 2023 21:01:52 -0400
X-MC-Unique: 0biRUml7P7G4vyWgDRw_Kg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B27ED2814244;
	Tue, 28 Mar 2023 01:01:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2B7031121330;
	Tue, 28 Mar 2023 01:01:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A962D19465B3;
	Tue, 28 Mar 2023 01:01:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.556.1679961602.2676482.blinux-list@redhat.com>
References: <mailman.208.1679843643.2676487.blinux-list@redhat.com>
 <mailman.420.1679919340.2676483.blinux-list@redhat.com>
 <mailman.556.1679961602.2676482.blinux-list@redhat.com>
Date: Tue, 28 Mar 2023 01:01:38 +0000
Subject: Re: Looking for a Good Way of Dealing with Accidently Deleted Files?
To: blinux-list@redhat.com
Message-ID: <mailman.496.1679965303.2676484.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yeah, the -i option is included by default on my system when running
rm, and the "are you sure?" prompts get so annoying I often do an rm
-f or rm-Rf instead of just rm.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

