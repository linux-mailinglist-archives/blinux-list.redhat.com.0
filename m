Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id D1B331F8A0E
	for <lists+blinux-list@lfdr.de>; Sun, 14 Jun 2020 20:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592159176;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Nq0SGJ7C32Jfr4qHWL8S5w9VBVuitaG4qWc/CDZQR3w=;
	b=OGNRp4999sA9GXXqbdeMW6MwCg5OJE9oiT37/dhGP5xJn9rnOc4BdM4FbZIVoHjf9WfNM4
	2qwX2d5zWWWTdzdzl/4Ot9ovXGF1AvIosZfzErxD/USlb6j4ZINtRBEDUHvcixXF+wqA0S
	6eo3+mgDMTHKi2jspCJvF2kNBFjQjlY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-9FLJj68YPWSCzX7-hCvpUQ-1; Sun, 14 Jun 2020 14:26:14 -0400
X-MC-Unique: 9FLJj68YPWSCzX7-hCvpUQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 35F7C1883602;
	Sun, 14 Jun 2020 18:26:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C22A60C87;
	Sun, 14 Jun 2020 18:26:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22F59833AA;
	Sun, 14 Jun 2020 18:26:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EIQ4OA020969 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 14:26:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3D4FB2026E04; Sun, 14 Jun 2020 18:26:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3932E202696B
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 18:26:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0CB5A8007AC
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 18:26:01 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-326-uurRpzkgOdKV-emTVrwZTw-1; Sun, 14 Jun 2020 14:25:58 -0400
X-MC-Unique: uurRpzkgOdKV-emTVrwZTw-1
Received: from spot.local (spot.local [IPv6:fe80::187a:b534:6313:c269])
	by cfcl.com (Postfix) with ESMTP id AA957FB5396
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 11:25:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Prospects for an accessible and open version of Android?
In-Reply-To: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
Date: Sun, 14 Jun 2020 11:25:56 -0700
Message-Id: <EB4A95DF-4EF4-44B3-BD31-140DA0E08FFA@cfcl.com>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05EIQ4OA020969
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

My apologies for posting with such an obscure identification; I'm used to
having the senders' identity retained in mailing lists.  For clarification,
my email contact information is "Rich Morin <rdm@cfcl.com>".

-r

>> On Jun 14, 2020, at 07:12, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hmmm.  That's an odd "From" address.  Does this list hide the poster's email
> address by default.  If not, is there a settings issue somewhere?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

