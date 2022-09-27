Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 397D25EBB7B
	for <lists+blinux-list@lfdr.de>; Tue, 27 Sep 2022 09:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664263871;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g/MmQxBzX8Mg/NU3Xs63OHgwOPnTN8fA0RzhL+MtPJ0=;
	b=VUsZ8h9oSKcAykuZ7PbyIkwuhl/so6GuY5oUnqXY5piX9gxtu9vm6Y0NSUdwCzT7dSQHec
	jJjd6+tE8BpIgcT7BlIOgDka382CevmZn2eeG4qBz00YL2BPaD8zjiv7ILAfctngu87l1j
	XhOlxeaHHuDaDlMq6vAAPA0R1HJo1AM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-260-y7PNvIajNhyHf6AAUKujFA-1; Tue, 27 Sep 2022 03:31:09 -0400
X-MC-Unique: y7PNvIajNhyHf6AAUKujFA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D94F38164CE;
	Tue, 27 Sep 2022 07:31:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A627CC15BA8;
	Tue, 27 Sep 2022 07:31:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3A6231946A4F;
	Tue, 27 Sep 2022 07:31:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 27 Sep 2022 09:22:52 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How do I install i-bus braille on linux mint?
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2908.1664244908.6083.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.2908.1664244908.6083.blinux-list@redhat.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Message-ID: <mailman.3030.1664263863.6077.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

Linux for blind general discussion, le lun. 26 sept. 2022 22:09:34 -0400, a ecrit:
> Do any of you know how to install i-Bus Braille on Linux Mint?
> 
> https://github.com/zendalona/ibus-braille
> 
> I downloaded the ibus-braille_1.1-1_all.deb, but get an error dependency not
> satisfiable.

Rather use 


apt install ./ibus-braille_1.1-1_all.deb


that'll resolve the dependencies.

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

