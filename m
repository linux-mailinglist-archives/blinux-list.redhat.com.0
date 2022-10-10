Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED9E5FA36C
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 20:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665426978;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rZtstpp1PJ4TwaPlW+euM4a981PrfwUNRWc3/TUuHos=;
	b=Ndv9oMNMFqJNmD7dFMwoaNkW0v3mf2L65Igqba24OBffQZMYKuFr10f4v911QVQNuNpC1x
	wfxu7IbkJIoKEXFolHi69sGJx6HfULCER3uRZeM/Dr77DR3/DgNzz6EQwIBgxYo5l6nFjE
	PRMGq6Yrhbw0rZzbQcrHVkPQSCqhkyo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-313-KKy0ADAON3eAASSxoPwOtg-1; Mon, 10 Oct 2022 14:36:14 -0400
X-MC-Unique: KKy0ADAON3eAASSxoPwOtg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 584131C1A948;
	Mon, 10 Oct 2022 18:36:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A1027404CD97;
	Mon, 10 Oct 2022 18:36:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5C0BA1946A48;
	Mon, 10 Oct 2022 18:36:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: Is there a Fedora Espeakup Package?
Date: Mon, 10 Oct 2022 13:36:04 -0500
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
 <mailman.6427.1665341560.6078.blinux-list@redhat.com>
 <mailman.6276.1665342112.6083.blinux-list@redhat.com>
 <mailman.6652.1665345960.6080.blinux-list@redhat.com>
 <mailman.6499.1665347033.6081.blinux-list@redhat.com>
 <mailman.6875.1665417028.6075.blinux-list@redhat.com>
 <mailman.6596.1665417295.6081.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.6596.1665417295.6081.blinux-list@redhat.com>
Message-ID: <mailman.6599.1665426970.6077.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I had heard of brltty, butt never have known what may be done with it.

> On Oct 10, 2022, at 10:54, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Tdsr runs as a subshell of another shell, meaning that you have to have a shell already running in order to get it speaking. It's easy enough to get it started after logging in, but it will not read the login prompt or anything before it. This is the primary reason brltty has been mentioned, since it provides speech output via speech-dispatcher and runs as a system service, so it can speak before login.
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

