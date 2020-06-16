Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 5D46C1FBE48
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jun 2020 20:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592332815;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ChMb8ElBQHf91MVITgVHXmjPovyDAyjeQ/KecKNQnaM=;
	b=Boa2k1vbrorTIy6oNvAAnTZsAM6Iut50Jt0jNeZCENj5j+Kwhs6YW1cF5Bqs9TuMWIqivW
	GkkkPpNedm3m2CdU/7JkWQyzN0PbHebkbrLLzjqefeyT3CsdHA9OavVzwojBS0VyG2RYAn
	ZN5gzUE5Ee5fcGSKAOTB2Kmh/3aGH1s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-474-V6-A7qdpNlq66jC8pJ4A8w-1; Tue, 16 Jun 2020 14:40:13 -0400
X-MC-Unique: V6-A7qdpNlq66jC8pJ4A8w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A28C18A8222;
	Tue, 16 Jun 2020 18:40:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 875B95D9D3;
	Tue, 16 Jun 2020 18:40:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 349D1833CC;
	Tue, 16 Jun 2020 18:40:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05GIdqJK019650 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Jun 2020 14:39:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5CE2C2028CD2; Tue, 16 Jun 2020 18:39:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5886320267F2
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 18:39:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 11C0018A6663
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 18:39:49 +0000 (UTC)
Received: from mail.carmickle.com (mail.carmickle.com [69.164.218.211])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-284-WKCbzMF-PHi7gtWjhmvsdA-1; Tue, 16 Jun 2020 14:39:46 -0400
X-MC-Unique: WKCbzMF-PHi7gtWjhmvsdA-1
Received: from portkey.lan (unknown [176.230.58.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.carmickle.com (Postfix) with ESMTPSA id EC308672F6D4
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 18:39:44 +0000 (UTC)
Date: Tue, 16 Jun 2020 19:39:41 +0100 (BST)
X-X-Sender: geoff@portkey.home
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
In-Reply-To: <20200615100242.GC2180@rednote.net>
Message-ID: <alpine.DEB.2.11.2006161932480.1332@portkey.home>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

On Mon, 15 Jun 2020, Linux for blind general discussion wrote:

> I'm sure Hans, our list owner of record, would happily entertain a
> better configuration. Please note this list runs on Redhat's list
> servers which I believe are still mailman based. So, it's a question of
> what Redhat has implemented upstream.

Unfortunately, not only is it still Mailman 2 which is not the actively 
developed Mailman version any more, but it is Mailman 2.1.12 which was 
released in 2009.

I used to be a bit of a Mailman guru, I'm a bit ashamed to say that I'm 
not really anymore.  I do think that they added some SPf/DKIM/DMARC 
friendly options to later 2.x releases, but they obviously aren't 
available in this release.

FWIW, the current Mailman 2.x release is 2.1.33.

Cheers,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

