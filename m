Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id E13241F8B16
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jun 2020 00:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592172940;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ttTqYWYSyBeU1qIw8IjQ2xjCi8RbXwhPiqKEcfn8f3U=;
	b=JBZcsCuLNUDm4IqPkiu0QwsrJeXKJS2poOg/VrzFxJ7y59bRPQbkzCzGrziD3c/8uptk0o
	Z2Nw4fnioxv3ad22qF2GqMDOimypb8aDnXH8lcS8rN1jQQsgUFgMQSYdfLT9RBa2Eeysuo
	GBroi8gWsD8KK5K05m9B3XdVnh+TpMI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-85-sqBwEgbfOoe-BX2d8y18ew-1; Sun, 14 Jun 2020 18:15:38 -0400
X-MC-Unique: sqBwEgbfOoe-BX2d8y18ew-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 564161883608;
	Sun, 14 Jun 2020 22:15:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04CC982045;
	Sun, 14 Jun 2020 22:15:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 14EC01809547;
	Sun, 14 Jun 2020 22:15:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EMFOF9009220 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 18:15:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CCF69110F39E; Sun, 14 Jun 2020 22:15:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C711910031E7
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 22:15:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CCE0F85A5A3
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 22:15:22 +0000 (UTC)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-166-e29nt4NmOAeyN1hCrjkyOA-1; Sun, 14 Jun 2020 18:15:20 -0400
X-MC-Unique: e29nt4NmOAeyN1hCrjkyOA-1
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id B48AC32EF
	for <blinux-list@redhat.com>; Mon, 15 Jun 2020 00:09:24 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZlRFCkqXWQGE for <blinux-list@redhat.com>;
	Mon, 15 Jun 2020 00:09:24 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
	[86.234.239.11])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id F061A30D2
	for <blinux-list@redhat.com>; Mon, 15 Jun 2020 00:09:23 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1jkaoc-000exk-RA
	for blinux-list@redhat.com; Mon, 15 Jun 2020 00:09:22 +0200
Date: Mon, 15 Jun 2020 00:09:22 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
Message-ID: <20200614220922.g2ho7qemusaojlfa@function>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
MIME-Version: 1.0
In-Reply-To: <eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Didier wrote:
> I don't know if this the main reason, but not writing the initial
> poster's email address in the From: field prevents authentication
> failures.

Yes, that's probably the reason. But if not the email address, the list
could at the very least keep the name.

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

