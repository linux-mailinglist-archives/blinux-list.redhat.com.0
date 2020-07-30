Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 688E2233352
	for <lists+blinux-list@lfdr.de>; Thu, 30 Jul 2020 15:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596116858;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Vhqipmi8yE+p2LEjP3oDnMQn4+d/Q0CynrAP+Rjgrus=;
	b=VSD90/ve97HYAZp56vBkAGkqx27vKR3/qtiM8wuIdds7//xs4uK336zHOrgTFKQYoRh4yr
	ufsCd9tV1Yxr5WP9ybRA6QKfVEBR9j1hCb2bDaSsBavWiaiDWTwVg4N/mo2k2+D2dYUIOc
	Ac3xq5TLlviQQ/A0DY6OebaiCx/KBQA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-dEbsqKNEMXiiOUe-ov_6bA-1; Thu, 30 Jul 2020 09:47:36 -0400
X-MC-Unique: dEbsqKNEMXiiOUe-ov_6bA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 53ABBE91D;
	Thu, 30 Jul 2020 13:47:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C1525D9E4;
	Thu, 30 Jul 2020 13:47:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 77C2E9A0E6;
	Thu, 30 Jul 2020 13:47:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06UDgHYF014211 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 30 Jul 2020 09:42:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B95AFFA740; Thu, 30 Jul 2020 13:42:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B367AFA757
	for <blinux-list@redhat.com>; Thu, 30 Jul 2020 13:42:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F251818A6661
	for <blinux-list@redhat.com>; Thu, 30 Jul 2020 13:42:12 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-64-phG3pi4kNd6M1JcgqNspOQ-1; Thu, 30 Jul 2020 09:42:09 -0400
X-MC-Unique: phG3pi4kNd6M1JcgqNspOQ-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 06UDg9S9283726
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 30 Jul 2020 13:42:09 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 06UDg9S9283726
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 06UDg9S9283726
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 06UDg9vx283725
	for blinux-list@redhat.com; Thu, 30 Jul 2020 09:42:09 -0400
Date: Thu, 30 Jul 2020 09:42:09 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: installing speakup on RHEL 7/8
Message-ID: <20200730134209.GA2791@rednote.net>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<20200723165930.GB2593@rednote.net>
	<00d901d6613a$4090d7c0$c1b28740$@yahoo.com>
	<daba66f6-da1e-a915-dd5d-9569e5d3dcaf@slint.fr>
	<20200726163624.y7loskvf3jg4nw65@function>
	<54181004-f8ea-344a-29e7-ab437c03f22f@slint.fr>
	<20200729154715.66njgipo7l3jxbdv@function>
MIME-Version: 1.0
In-Reply-To: <20200729154715.66njgipo7l3jxbdv@function>
X-Operating-System: Linux opera.rednote.net 5.7.9-100.fc31.x86_64
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Indeed, but this conversation started over the question of Speakup in a
RHEL kernel.

So, now that we've established the technical objections are all cleared,
it will be interesting whether Speakup is promoted to main or not. If it
goes into main, RHEL would seemingly need to include it at long last. Or
am I wrong about that?

I'm watching to see whether we still have political opposition as we
have in the past, by my memory of events. One would hope not, but it's
deeds that count.

Best,

Janina

Linux for blind general discussion writes:
> Linux for blind general discussion, le mer. 29 juil. 2020 17:24:15 +0200, a ecrit:
> > Not that it matters much for Slackware and derivatives as speakup drivers
> > have been provided in Slackware since version 8.0 released on 2001-06-27,
> > in kernel version 2.2.19...
> 
> Yes, Debian as well. Just one thing: remember to enable
> CONFIG_ACCESSIBILITY if it's not already.
> 
> Samuel
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

