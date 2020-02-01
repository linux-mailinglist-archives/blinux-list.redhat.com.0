Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id CB5B214F651
	for <lists+blinux-list@lfdr.de>; Sat,  1 Feb 2020 04:43:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580528580;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9wl2sWdbZz8NaJR+McDl3a6Gw1o5Sfa7yc4dseO+thQ=;
	b=CzMcg7U67OCYXjkPrKylqTkzB9S4b8yAc46khuw2qj29bDOoGVvgX6JuY9P0utMkTOSTk8
	PmWj+fkeRCe1Dtf70IbkKR/PrzaWmFIgRcMOZIf6k1UIe0N3rSafkCwPT4O+NzmafPtV7I
	CIaORNIB2i8w26rYk1p988Nw91Sh8dY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-gJirICaPMq6t9nFJuwVO1A-1; Fri, 31 Jan 2020 22:42:58 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A19BE8017CC;
	Sat,  1 Feb 2020 03:42:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A374E60BE0;
	Sat,  1 Feb 2020 03:42:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 21E9085CEB;
	Sat,  1 Feb 2020 03:42:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0113gQWr008939 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 31 Jan 2020 22:42:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 712D01003207; Sat,  1 Feb 2020 03:42:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CE861004C7F
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 03:42:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 33D7A89F9E6
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 03:42:24 +0000 (UTC)
Received: from omta01.suddenlink.net (omta01.suddenlink.net [208.180.40.71])
	by relay.mimecast.com with ESMTP id us-mta-430-vVuiEJdyNgeXwXRpjQ3ZVg-1;
	Fri, 31 Jan 2020 22:42:21 -0500
Received: from wb5agz ([47.217.105.76]) by dalofep01.suddenlink.net
	(InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
	id <20200201034221.ZNAF16371.dalofep01.suddenlink.net@wb5agz>
	for <blinux-list@redhat.com>; Fri, 31 Jan 2020 21:42:21 -0600
Received: from martin by wb5agz with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>) id 1ixjfo-0002br-Hv
	for blinux-list@redhat.com; Fri, 31 Jan 2020 21:42:20 -0600
To: blinux-list@redhat.com
Subject: Re: A Live Boot Image for the Mac that Talks
In-reply-to: <alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
Comments: In-reply-to Linux for blind general discussion
	<blinux-list@redhat.com>
	message dated "Fri, 31 Jan 2020 01:13:40 -0500."
MIME-Version: 1.0
Content-ID: <10033.1580528540.1@wb5agz>
Date: Fri, 31 Jan 2020 21:42:20 -0600
Message-Id: <E1ixjfo-0002br-Hv@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep01.suddenlink.net from [47.217.105.76] using ID
	martin.m@suddenlink.net at Fri, 31 Jan 2020 21:42:21 -0600
X-CM-Analysis: v=2.3 cv=dJDYZ9Rb c=1 sm=1 tr=0 cx=a_idp_d
	a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
	a=kj9zAlcOel0A:10 a=Jdjhy38mL1oA:10 a=7jTcn3IT1uMA:10
	a=20KFwNOVAAAA:8 a=ST0VNQzJVWDM_4QkDmUA:9 a=CjuIK1q_8ugA:10
	a=Z5ABNNGmrOfJ6cZ5bIyy:22 a=jd6J4Gguk5HxikPWLKER:22
X-CM-Envelope: MS4wfDwJFPB6vymCdnb8CRcZ3yEZMr4C9cyCyAIW0g6pMolalzN4FXBzaHoUl6S79iFMibUZmaAgh3zQs2mD18/1Q5LDvmZmBu41TrpR3S7GSflFrBXws6pD
	ZWMHv2FMc5WoUrrD2o3HHj+g/8qHbXz/cWtZhmaUZFvtaiLGK8VFGumw
X-MC-Unique: vVuiEJdyNgeXwXRpjQ3ZVg-1
X-MC-Unique: gJirICaPMq6t9nFJuwVO1A-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0113gQWr008939
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

Linux for blind general discussion <blinux-list@redhat.com> writes:
> If your speakers the mac uses to talk are internal to the mac, Jenux
> would probably work for you.  If you attach speakers by means of usb
> ports Jenux cannot install with usb speakers and talk.

	Good to know.  These speakers are internal.

Thank you.

Martin McCormick


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

