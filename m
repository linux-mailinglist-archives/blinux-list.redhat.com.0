Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8D0592811
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 05:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660533736;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tJdLxV/mG7fWfjGFNUvpfUwxU1F43/6WAkuUmrmSEuo=;
	b=iN/GylRVG5RqZWlq1bU3aAVkIOzoSHv6M7i44EHHTDfJF2qFkfq2KS2ZQKxdVQItkVcN0X
	p/iax7QQ1fSUuX+8skwGGKh0zWB3EQzgTWga58JgCCU79ofsT4dXnunD2PeOb2waVUTJEi
	7IVQxThaswqrBF2paBTlMjBddfvX5wo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-42-Cs5SfUb9MrW7pLv7o2HsJw-1; Sun, 14 Aug 2022 23:21:33 -0400
X-MC-Unique: Cs5SfUb9MrW7pLv7o2HsJw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F3C101C004E1;
	Mon, 15 Aug 2022 03:21:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A066490A04;
	Mon, 15 Aug 2022 03:21:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1CDC71946A49;
	Mon, 15 Aug 2022 03:21:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 14 Aug 2022 23:21:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
 <Pine.LNX.4.64.2208132205110.1261053@server2.shellworld.net>
 <mailman.526.1660482367.10505.blinux-list@redhat.com>
 <mailman.570.1660487404.10502.blinux-list@redhat.com>
 <mailman.564.1660515996.10499.blinux-list@redhat.com>
 <mailman.613.1660532979.10500.blinux-list@redhat.com>
 <mailman.622.1660533385.10502.blinux-list@redhat.com>
In-Reply-To: <mailman.622.1660533385.10502.blinux-list@redhat.com>
Message-ID: <mailman.566.1660533690.10507.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yes. I seem to remember having to install an rpm package for RealPlayer. 
I think that's what ultimately moved me to Red Hat, so I could get 
trplayer working with the RealPlayer rpm.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

