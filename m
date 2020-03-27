Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id E8319196045
	for <lists+blinux-list@lfdr.de>; Fri, 27 Mar 2020 22:14:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585343642;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=obJS5qqXI8EoHj87crRas6PEYwGJPvBzHHPoYXo05Wc=;
	b=bbVbkbT9uqMANHSn3LPEN8PpMgYJWayim3179pD8+RtTTRwOUnDAUj/Pxc3+dnb5hGBJHp
	tz9vl3pm4FQ8cG6GWfUDo+5Mz/vMmi70DURPZ329vvjT1cMh5ez+32NBwX1C2E7PXcr6qL
	Z2RFWhzZ2mzZy9ubR2T/mZMZMRWVn4c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-444-ir4EEoo8O8S1nylEn3Y4cA-1; Fri, 27 Mar 2020 17:14:00 -0400
X-MC-Unique: ir4EEoo8O8S1nylEn3Y4cA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1C1E1005512;
	Fri, 27 Mar 2020 21:13:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C69331C9;
	Fri, 27 Mar 2020 21:13:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D635D18089CD;
	Fri, 27 Mar 2020 21:13:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RLDfuq022448 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 17:13:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B08F82166B2D; Fri, 27 Mar 2020 21:13:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC5DB2166B2B
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 21:13:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9CAE2101A55A
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 21:13:37 +0000 (UTC)
Received: from bilbo.visn.co.uk (bilbo.visn.co.uk [193.254.210.60]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-404-QB0R5c4uPt2iL2gBH6pVEQ-1; Fri, 27 Mar 2020 17:13:35 -0400
X-MC-Unique: QB0R5c4uPt2iL2gBH6pVEQ-1
Received: from cpc121376-wals12-2-0-cust281.16-1.cable.virginm.net
	([77.100.81.26]:1109 helo=bobsh23aug09)
	by bilbo.visn.co.uk with esmtpa (Exim 4.93)
	(envelope-from <robh@apearl.net>) id 1jHwIG-00A7TP-Gv
	for blinux-list@redhat.com; Fri, 27 Mar 2020 21:13:33 +0000
Message-ID: <6E7CE5B42BCA4755BDC5CF7210633D62@bobsh23aug09>
To: <blinux-list@redhat.com>
References: <CAO2sX317wcDpD8e3OWg7_5UvxMWND7urVtyok-9i9Q=PBBZCFg@mail.gmail.com>
Subject: Re: Convert unwrapped paragraphs to hard wrapped paragraphs when
	there'sno blank lines.
Date: Fri, 27 Mar 2020 21:13:35 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5579
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - bilbo.visn.co.uk
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - apearl.net
X-Get-Message-Sender-Via: bilbo.visn.co.uk: authenticated_id:
	robh+apearl.net/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: bilbo.visn.co.uk: robh@apearl.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02RLDfuq022448
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Apache PHP server would do it, though would need to be coded.  I used to 
love doing this and text-crunchers were my stock'in trade.

But a long time ago now. But the functions are still there and it's not a 
difficult language to grasp.

RobH.

----- Original Message ----- 
From: "Linux for blind general discussion" <blinux-list@redhat.com>
To: "Linux for blind general discussion" <blinux-list@redhat.com>
Sent: Friday, March 27, 2020 3:30 PM
Subject: Convert unwrapped paragraphs to hard wrapped paragraphs when 
there'sno blank lines.


Okay, this isn't strictly an accessibility question, but I can't think
of any better place to ask and Google didn't help much.

I occasionally purchase eBooks from Smash Words as they're the only
eBook Store I know of that offers plain text along side the far too
prevalent for my liking PDF, ePub, and Kindle formats.

Problem is, their plain text eBooks are typically long enough Firefox
and Orca simply choke on them and they have paragraphs that are
unwrapped, which makes reading them with nano and SBL cumbersome.
Normally, I'd just use nano's justify command to hard wrap thewhole
file, but they lack blank lines between paragraphs, so Nano would
think the whole book a single paragraph.

So, does anyone know a way to automate inserting blank lines before
and after each line in a file that's too long to fit on the screen all
at once and then hard wrap those long lines?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

