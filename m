Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DE1468CE2
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 19:59:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638730775;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MdEY3dGhIvR6ILyaQdGesxdnbncujq8BZ9x4LBLplww=;
	b=hLRDkkt/mHE6Mv2pPKmeWOo+lz+ag4eC1DtR+BSHBOFVn1U5BOLEmi8aBE6SvTQuZCab2T
	/QbGaRM6Ie6sQepnFRc7F1cDMRdFAg0zo82JMt4H0165iyuWwTDsacFO6CCKzUZpj7lYnD
	oLfgUrjkv1HWjNEMm32pKTbLlyLKMW8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-561-DekPqRtgNxSaOu9bWd9fOg-1; Sun, 05 Dec 2021 13:59:34 -0500
X-MC-Unique: DekPqRtgNxSaOu9bWd9fOg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4700E100B793;
	Sun,  5 Dec 2021 18:59:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 113FA5C1C5;
	Sun,  5 Dec 2021 18:59:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5E5AF4CA93;
	Sun,  5 Dec 2021 18:59:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B5IxExh017863 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 13:59:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DB80340CFD10; Sun,  5 Dec 2021 18:59:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D65E240CFD04
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 18:59:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C17B5800141
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 18:59:14 +0000 (UTC)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-81-0wepICIQNPu9V1m7b3x_kQ-1; Sun, 05 Dec 2021 13:59:13 -0500
X-MC-Unique: 0wepICIQNPu9V1m7b3x_kQ-1
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 692BD102565
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 13:56:23 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 61D43102564
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 13:56:23 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.171.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id B89FB102563
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 13:56:22 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.94.2)
	(envelope-from <joelz@pobox.com>) id 1mtwgM-0002m1-DB
	for blinux-list@redhat.com; Sun, 05 Dec 2021 08:56:18 -1000
Date: Sun, 5 Dec 2021 08:56:18 -1000
To: blinux-list@redhat.com
Subject: Re: Useful aliases in .bashrc?
Message-ID: <20211205185618.pefnwgudeu6mc47j@sprite>
References: <a0603f61-07eb-3f44-411e-805a5ea7afe6@gmail.com>
MIME-Version: 1.0
In-Reply-To: <a0603f61-07eb-3f44-411e-805a5ea7afe6@gmail.com>
X-Pobox-Relay-ID: 0A316A6E-55FD-11EC-ACF7-CD991BBA3BAF-04347428!pb-smtp2.pobox.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Here's a "realias" command that edits and reloads and .aliases file:

--
alias realias='$EDITOR ~/.aliases; source ~/.aliases'
source ~/.aliases


-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

