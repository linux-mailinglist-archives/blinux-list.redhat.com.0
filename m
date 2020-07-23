Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 56A0422B63E
	for <lists+blinux-list@lfdr.de>; Thu, 23 Jul 2020 20:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595530686;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sggjqggg2quPfwgxKEwZYicqiWMeRR5t0p5A8IH5ycw=;
	b=Ethzqsp1JXWlC2mUWSEzMEeiy1WyvsbYTcoy3qzJ6WX0bpRIVnF1cBLkKmY6GR7CfL3UIQ
	/kWioUn3vaSp3+jjlgwCyTD5Rg11k5vb/YoGmUGHSmCtzMyYCYX47TtkK4mkC2vTpHT2fC
	1D7+lqn+xz3npgtr0VcMB3PMYTVu/GA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-5-KVUKrVOcPbGcQxfNYfPj7Q-1; Thu, 23 Jul 2020 14:58:04 -0400
X-MC-Unique: KVUKrVOcPbGcQxfNYfPj7Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3EE308017FB;
	Thu, 23 Jul 2020 18:57:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE10D6931B;
	Thu, 23 Jul 2020 18:57:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 866AD1809554;
	Thu, 23 Jul 2020 18:57:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06NIvn1f010731 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Jul 2020 14:57:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B415C11B3E85; Thu, 23 Jul 2020 18:57:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AEB4011A9C99
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 18:57:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7AA351832D23
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 18:57:47 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-467-GlNKG6ipO3ea0uz-CkyUQw-1; Thu, 23 Jul 2020 14:57:44 -0400
X-MC-Unique: GlNKG6ipO3ea0uz-CkyUQw-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 06NIvi4m336002
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 18:57:44 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 06NIvi4m336002
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 06NIvi4m336002
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 06NIvh0P336001
	for blinux-list@redhat.com; Thu, 23 Jul 2020 14:57:43 -0400
Date: Thu, 23 Jul 2020 14:57:43 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: installing speakup on RHEL 7/8
Message-ID: <20200723185743.GC2593@rednote.net>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<20200723165930.GB2593@rednote.net>
	<CAO2sX33QTVyvP3fFRvk9U=vJY4dF2Qfuc-CQqeeNQ0M_+aGVJw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX33QTVyvP3fFRvk9U=vJY4dF2Qfuc-CQqeeNQ0M_+aGVJw@mail.gmail.com>
X-Operating-System: Linux opera.rednote.net 5.7.8-100.fc31.x86_64
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Yes, a group of someones has indeed been working for several years on clearing the objections and have
recently resolved all issues.


Best,

Janina

Linux for blind general discussion writes:
> Okay, I'll admit I know next to nothing about how kernel stuff works,
> but I thought espeak had been trapped in staging for years with few
> prospects of ever getting promoted to main or whatever its called for
> modules that are pretty much guaranteed to be included in the default
> kernel build for any distro not running a deliberately stripped down
> kernel... or has someone recently actually been making progress
> towards getting speakup to the point of such a promotion?
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

