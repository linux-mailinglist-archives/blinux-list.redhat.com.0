Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 106352F4CDB
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jan 2021 15:13:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610547200;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PaWv3f/bGz/Za4kbSQ53DDGylBddiNtGVxexsClXHBk=;
	b=InIUNJlV5daGhWO9VORs3WfXwXYEx8iMuxUzGP+fn9sZUnJkGRcKlVHIoUyQ4NqdbzKFyL
	LEBhcWNj4aTpkXaI6gmJz+lV8+so9kxVXzlrHQ+mWHbNX8CBJ7KXYIoGAgPwMEgfgiSRmM
	c4jCWQHM2OUYd5MQl7ztiqpHgc+SiKs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-23-bYz1etbbN86Wek1KSdAKZQ-1; Wed, 13 Jan 2021 09:13:17 -0500
X-MC-Unique: bYz1etbbN86Wek1KSdAKZQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 70F781934100;
	Wed, 13 Jan 2021 14:13:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 860D2722CA;
	Wed, 13 Jan 2021 14:13:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 42A024BB7B;
	Wed, 13 Jan 2021 14:13:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10DECvco013324 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 09:12:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 38E272026D49; Wed, 13 Jan 2021 14:12:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3467E2026D46
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 14:12:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F14D1805B03
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 14:12:54 +0000 (UTC)
Received: from pps02a.loc.gov (pps02a.loc.gov [140.147.137.45]) (Using TLS)
	by relay.mimecast.com with ESMTP id us-mta-288-vmytLhfIPrKaGkRhX6L9dw-1;
	Wed, 13 Jan 2021 09:12:52 -0500
X-MC-Unique: vmytLhfIPrKaGkRhX6L9dw-1
Received: from pps.filterd (pps02a.loc.gov [127.0.0.1])
	by pps02a.loc.gov (8.16.0.43/8.16.0.43) with SMTP id 10DDnV92007603
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 08:53:08 -0500
Received: from mail2.loc.gov (acfxex02.loc.gov [140.147.237.146])
	by pps02a.loc.gov with ESMTP id 35y97a6pry-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 08:53:08 -0500
Received: from ACFXEX01.LCDS.LOC.GOV (140.147.237.145) by
	ACFXEX02.LCDS.LOC.GOV (140.147.237.146) with Microsoft SMTP Server
	(TLS) id 15.0.1497.2; Wed, 13 Jan 2021 08:53:07 -0500
Received: from ACFXEX01.LCDS.LOC.GOV ([140.147.237.145]) by
	acfxex01.LCDS.LOC.GOV ([140.147.237.145]) with mapi id 15.00.1497.010;
	Wed, 13 Jan 2021 08:53:07 -0500
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Does anyone on here read code in braille?
Thread-Topic: Does anyone on here read code in braille?
Thread-Index: AQHW6Zr25xRXGJZfg0KHHPrucKwBdaolkWoQ
Date: Wed, 13 Jan 2021 13:53:07 +0000
Message-ID: <5e22d96dbd1c4d908ff9c8ef3429a1d1@acfxex01.LCDS.LOC.GOV>
References: <3F62765C-1C87-4A27-BBB9-C648DEF35090@gmail.com>
In-Reply-To: <3F62765C-1C87-4A27-BBB9-C648DEF35090@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [140.147.111.5]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
	definitions=2021-01-13_07:2021-01-13,
	2021-01-13 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
	lowpriorityscore=0 bulkscore=0
	mlxlogscore=999 phishscore=0 impostorscore=0 malwarescore=0
	clxscore=1015
	mlxscore=0 priorityscore=1501 adultscore=0 spamscore=0 suspectscore=0
	classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2101130085
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10DECvco013324
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The Canute is big, heavy and slow to refresh. The braille is good, but the lines are spaced about an inch apart to accommodate the display mechanism. If the objective is to read code and interact fluidly with the computer that is running it, I don't think it would be a good choice.
There are a number of displays with 20 to 40 cells per line. I have not used them with BRLTTY, so I can't tell you much more than that. I have used 20-cell and 80-cell displays under Windows with JAWS and NVDA, and they can be quite handy as you are working at the command prompt or command-line interface. I find that although lines of program code can get quite long, an 80-character display is usually too wide, because it requires a lot of arm motion, and you can sometimes miss important information on the right end of the display if there are a lot of intervening spaces.

Lloyd Rasmussen, Senior Staff Engineer
National Library Service for the Blind and Print Disabled
Library of Congress, Washington, DC 20542
202-707-0535     https://nls.loc.gov
The preceding opinions are my own and not necessarily those of the Library of Congress, NLS.

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Wednesday, January 13, 2021 5:58 AM
To: Blinux-list@redhat.com
Subject: Fwd: Does anyone on here read code in braille?

The canute display is cheap for a multi-line display.
Nine lines of 40 cells I think.
I have read some code in the past but not lately.

--Brian Tew

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

