Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id AC080184DA9
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 18:31:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584120659;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2Vl+kvEOJu4EuHuuj8wTGeNvbhVd1OmkerZ23tiTEYo=;
	b=DEf2wG455R8ns8Dp2pio76Pfj4a73iKrr5WFpKnXo7rBDlRjgwBG2hlfPegNVBQw9dRVnw
	PwIx4sPvvI23MAyNrATNMZ/sKKxD+etG02eplEUu7VPoH1I53gsIcjsTrMgvGivgl75Je5
	YbeYzAYJ+e7B6rZRQ9cby7AcIS7a8uw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-12-2i7dWYASNmGPL8aSAvdvSA-1; Fri, 13 Mar 2020 13:30:55 -0400
X-MC-Unique: 2i7dWYASNmGPL8aSAvdvSA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92845107ACC9;
	Fri, 13 Mar 2020 17:30:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D2BB5D9CA;
	Fri, 13 Mar 2020 17:30:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E3BB11809567;
	Fri, 13 Mar 2020 17:30:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DHUcBC012811 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 13:30:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C9EC1103F279; Fri, 13 Mar 2020 17:30:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C44DD103F27C
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:30:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D75C7185A78E
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:30:36 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-355-fg7JxSUjOzu-hkbVJ2SH5A-1; Fri, 13 Mar 2020 13:30:33 -0400
X-MC-Unique: fg7JxSUjOzu-hkbVJ2SH5A-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id EA2908C033E; Fri, 13 Mar 2020 17:30:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id E6D228C01E3
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 13:30:31 -0400 (EDT)
Date: Fri, 13 Mar 2020 13:30:31 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Stormux is born.
In-Reply-To: <6fab7d70-e1d3-47ab-a34d-ac5d6d0eb032@localhost>
Message-ID: <Pine.LNX.4.64.2003131329290.19101@server2.shellworld.net>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
	<alpine.NEB.2.21.2003131105300.24751@panix1.panix.com>
	<6fab7d70-e1d3-47ab-a34d-ac5d6d0eb032@localhost>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02DHUcBC012811
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

Keep in mind that reddit has undergone some changes lately which may 
impact previously successful tools.



On Fri, 13 Mar 2020, Linux for blind general discussion wrote:

> I've had pretty good luck reading the regular Reddit website, so I'll look into putting Stormix on Reddit. Thanks for the suggestion.
> ~Kyle
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

