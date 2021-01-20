Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7B7B02FC7F0
	for <lists+blinux-list@lfdr.de>; Wed, 20 Jan 2021 03:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611109795;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=29mDna73jHScrD2gXhU/L+B7F3KbN6VNlki8bfcfV7M=;
	b=VVvHoZyaA9/o86BG2d+976/KXGlIjHlczwN0fm2hPvjMEAHRKK4eOpYKdC9reNoh/5qORt
	Xu5pef1bRrNSvj/fOu5/SjT7AqvO/SATzWi107ym6o9tT59ZQcjIKfs3ItWNlV0zviAONA
	TZdbxKcCh2a2ZkRf63rUTQAXk1+AS8s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-544-vuKWpLi4NpSZXA4cEVBegg-1; Tue, 19 Jan 2021 21:29:53 -0500
X-MC-Unique: vuKWpLi4NpSZXA4cEVBegg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE1F4107ACE3;
	Wed, 20 Jan 2021 02:29:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0638E60C91;
	Wed, 20 Jan 2021 02:29:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CCCD618095FF;
	Wed, 20 Jan 2021 02:29:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10K2TSBc000890 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 19 Jan 2021 21:29:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 76B8A20296AF; Wed, 20 Jan 2021 02:29:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7279B20296AC
	for <blinux-list@redhat.com>; Wed, 20 Jan 2021 02:29:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE9F81875040
	for <blinux-list@redhat.com>; Wed, 20 Jan 2021 02:29:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-104-IXmrsoD4MsyW_q5tp5OqqQ-1; Tue, 19 Jan 2021 21:29:23 -0500
X-MC-Unique: IXmrsoD4MsyW_q5tp5OqqQ-1
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DL8c25mJMzgRJ
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 21:29:22 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4DL8c25DXsz1QXJ; Tue, 19 Jan 2021 21:29:22 -0500 (EST)
Date: Tue, 19 Jan 2021 21:29:22 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: an espeak problem
Message-ID: <20210120022922.GA18221@panix.com>
References: <20210119192128.GA9767@panix.com> <tsleeig1y87.fsf@suchdamage.org>
MIME-Version: 1.0
In-Reply-To: <tsleeig1y87.fsf@suchdamage.org>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks. I was using pulseaudio. I've shut it off and will see if
the problem occurs.


On Tue, Jan 19, 2021 at 03:13:44PM -0500, Linux for blind general discussion wrote:
> 
> 
> > I'm using speakup with espeak and espeakup, and over the past
> > couple of weeks I've noticed an odd phenomena: on occasion,
> > the speech sounds gravelly. If I continue to use speakup the
> > gravelliness or roughness of the voice becomes worse and
> > worse. But If I stop the speech and wait a few seconds, the
> > speech smoothes out and I can use speakup extensively with no
> > problems, at least until the problem recurs a few days later.
> 
> Are you using pulseaudio?
> If so, there seem to be some cases especially with espeak where pulse's
> adaptive latency algorithms get unstable and introduce some really
> horrible crackle.
> This can be particularly bad on HDMI audio out.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

