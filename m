Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id BD92327F254
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 21:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601492792;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3M3Tp/eW1Qj3VLpghktqI+prfbSV6WXSP5LzRkREshU=;
	b=Vf6jxHrtLddhg0bGWThvgZ2BuPPPY5A35Xvx3MMiD/rx0DId3qrlEaoMdcfzj46utS92tW
	Q4IBFkcLv5pINaRvblgzzra0Iyqc6JYoAri3PXQiwplYK3VwaWMURbmxEJiG+uDcr41ZvK
	HCKWW3Hml8TCYGhcblQyaWp+JwE8lJo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-cq7T4plJPhKYEOU-ccs1Mg-1; Wed, 30 Sep 2020 15:06:28 -0400
X-MC-Unique: cq7T4plJPhKYEOU-ccs1Mg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F39B10BBED5;
	Wed, 30 Sep 2020 19:06:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE00C1002C01;
	Wed, 30 Sep 2020 19:06:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B4E5E44A46;
	Wed, 30 Sep 2020 19:06:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UIuqjp027758 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 14:56:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E7569201EA97; Wed, 30 Sep 2020 18:56:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2C1E201828A
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 18:56:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9FAB801184
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 18:56:48 +0000 (UTC)
Received: from sonic307-2.consmr.mail.bf2.yahoo.com
	(sonic307-2.consmr.mail.bf2.yahoo.com [74.6.134.41]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-342-o0WW6lodO2OxHM7ioKnWlg-1;
	Wed, 30 Sep 2020 14:56:46 -0400
X-MC-Unique: o0WW6lodO2OxHM7ioKnWlg-1
X-YMail-OSG: Og7FJC8VM1lawbfcXArdy6_55rcNLFDQFyXEk1XhkzNmA7TI_0QmOBP3VM.1DSp
	bDvXVM6XzzfVrdQJkfPA9e6HEtwSZRF_gVgAUcsHToZv5YdkLQNTGaHsQMFszBiwoDx8xngU8LAb
	7VPWkVOYUbahQNVlkUR62sQOTiItgpPeHQ6hqveBy0tAYvW4wcIl0vtYZi4n9oV5v8pO0V4m6uLg
	OXelaRwpjDOXbMAEKWRrM9UmxYzoJuQKbWC_S16Bur3rFjMCCm7_S1nG8NZscL1V2uPPwNxZNiI_
	aDLjxFVGY4RKjhfnYO967OUCsVsosBTAhFMT.4BZV.SCKITlaM4N.jNTZREO7_CsbFHKfWbY5TuS
	UvBs_ur21LG.o4uXrJywvXDJxKzmOqeceRy5eSOqs.FqT2ytLxiYqrj8LBIwPcG7Hr8BQekmPsT9
	01P__psruIzeQyGwHDY6p6t2P5rpwHZcXqmWoqHo6ajhtvOIYRELc1yDRgT9MT9qWFfbnrmqNd1J
	ZJyqWOWwSkg77J61Xt4wru88BKrrcDkotilPhi_qpZPurKs7mb1dQR4OHBns9YCzvHsDWYfALn9.
	Pv8SjuzDy8eUN_tOg_RsO1oQE2VwKUs1l5GIcNNNz0.zOJMv0MNtT_CvjXkGAJaBeinBGJ30S.bt
	farg4JtuIgP8lCchB8J6Xi4xAsYma9ABWURXU0FqvbwfvBUkMiVNMdcTLU7MNPLbUD0KliNhx5xl
	aoYymoDREowoR6YqcGr4W.K7d0d5LbG0Bw_M9ii19njyi_DezBL3jwMHWLS28JaIb2qJT45D3RJx
	ghW5q6K5sd3iHllAJI_SXHiQTVESgh4pe8bI_bfcdV6QCcMEt1eJ_vCKRsK5HQLp_pabzoWZePGO
	vrdjSN23ka6xu8Pl0fPRlIAU9BVNNU25ii_CLRx4lLadrmsCdrGWtUNBLQ4ji57h11PiUlSbinzV
	Bus9NM5qHD7Tk.T7SFMiVrgudt9mUClyGCx.K8RxS2wFHplfJW6ErG6c8jTSLPf3Xg73hQ8Gz_Wx
	YGsOvRpghEk7XFhXX857_VmsOl0ll_ALtaiv3QGZ_iESesPyPYfz0ILy8maCXNgqw5.nALkLR4vv
	lgWgCPfv3bPfIKT4u6sJBIlLsntszxKlFFkOL8..7k5sTjAZuYD57TmJTKb7d_sbNkCoAwamwbXA
	l7iVTlGfxvEJAKDp2hjMVhlYEmJrWUcLOzeiIA3LDRmV3Pe1ntn.YPPObn2SIEFsGkoIXcLLQPVr
	WSY_3LY5JxhCvDjLp0Pg0F0zxJXPftMc7u2fJts64yC05LQd11qVVpa_P0S94a0bueutyJ_tx4YJ
	eBpmkdOcsQuf_gpEbYmAbbi860n4mPGn1b.RGuHpJr1JU6u00tzysliRPHpgClP4h.UG4zAbdOlw
	a2i.v.TkhtAeaJmToj7v753.1jOiB3CBMEcNtEt34492JzEe1y.kLwvftXce4Och9uLdSwSji.A6
	qSzGR
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic307.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 30 Sep 2020 18:56:45 +0000
Received: by smtp425.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 6b8d35dd1186cf8174b3bf88fcc4c421; 
	Wed, 30 Sep 2020 18:56:42 +0000 (UTC)
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<alpine.NEB.2.23.451.2009301308580.3267@panix1.panix.com>
	<3A5161DB-CEB0-4910-8B3F-300E01CE0605@cfcl.com>
User-agent: mu4e 1.4.13; emacs 28.0.50
To: blinux-list@redhat.com
Subject: Re: Console screenreaders
In-reply-to: <3A5161DB-CEB0-4910-8B3F-300E01CE0605@cfcl.com>
Message-ID: <87a6x7ozz0.fsf@yahoo.com>
Date: Wed, 30 Sep 2020 20:56:35 +0200
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit




Hi,

I am trying to install and run those console screen-readers on Ubuntu
Mate 20, but failiing. I am even trying to have speech at bootup, but I
can't find any setting to do that. Can anyone direct me where to get
more info about using Fenrir or Speakup?

With Fenrir, try as I might since yesterday, running it does not produce
speech. Instead, I get this error,

I tried looking for any defaults on the Internet, but seems I am hitting
against a wall.

The same applies with Yasr: It says connection was refused and I do not
get any speech.

With speakup, soon after installing it with sudo apt-get install
espeakup speakup-tools, I get the following error:
Errors were encountered while processing:
 espeakup
E: Sub-process /usr/bin/dpkg returned an error code (1)

TIa,

On Wednesday, 30 September 2020, at 19:23, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>> Some anonymous miscreant wrote:
>> 
>> espeak preferable to fenrir but that's only because fenrir reads ansi line
>> drawing characters when speaking.  espeak suppresses those characters.
>
> You might want to file a bug report, asking for this to be turned from a
> feature into an option.
>
> -r
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


-- 
Ishe Chinyoka
Be yourself; everyone else is already taken
Find me and my Factual musings at: https://www.chinyoka.com/

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

