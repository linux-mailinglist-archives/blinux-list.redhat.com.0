Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE6E470FDE
	for <lists+blinux-list@lfdr.de>; Sat, 11 Dec 2021 02:29:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639186169;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iz99iE9envuBd648Mu+DOcyPvKsT1R69GLUtX3dL10M=;
	b=iL6ugDSfNuwTrG3Zg+9Q1eVFeH6I4yUwesDiw8tLdcyPuNtPVgvDPG6elKnyhCZOnEypKb
	aF62X6zmm8UN3PlpY9ZA/0hYr6i/xO2kyRw+wSjeUihU2wtbgqvYzBEf3aj8ByTbUf8zXl
	dF7P0nUvDtIxHoxi70sofJE/xs3ggD0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-162-vsdELN9WMZaWWDhatEmdJQ-1; Fri, 10 Dec 2021 20:29:25 -0500
X-MC-Unique: vsdELN9WMZaWWDhatEmdJQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 169E8624;
	Sat, 11 Dec 2021 01:29:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7BF475D6D7;
	Sat, 11 Dec 2021 01:29:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 19C011809CB9;
	Sat, 11 Dec 2021 01:29:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BB1SrQl029730 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 10 Dec 2021 20:28:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C8F8B40CFD12; Sat, 11 Dec 2021 01:28:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C400C40CFD0A
	for <blinux-list@redhat.com>; Sat, 11 Dec 2021 01:28:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE50F185A794
	for <blinux-list@redhat.com>; Sat, 11 Dec 2021 01:28:53 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-537-9KUqsJMnO-C4GL8N4zoEUQ-1; Fri, 10 Dec 2021 20:28:51 -0500
X-MC-Unique: 9KUqsJMnO-C4GL8N4zoEUQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J9qtC1fdVz4HC8
	for <blinux-list@redhat.com>; Fri, 10 Dec 2021 20:28:51 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J9qtC0qp8zcbc; Fri, 10 Dec 2021 20:28:51 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J9qtC0VZHzcbP
	for <blinux-list@redhat.com>; Fri, 10 Dec 2021 20:28:51 -0500 (EST)
Date: Fri, 10 Dec 2021 20:28:50 -0500
To: blinux-list@redhat.com
Subject: fleacollar.sh question
Message-ID: <alpine.NEB.2.23.451.2112102026540.15529@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If a gnupg2 key pair got generated before fleacollar.sh was run, will the
fleacollar.sh script find those and use them correctly or does the
fleacollar.sh script require a new key pair be generated?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

