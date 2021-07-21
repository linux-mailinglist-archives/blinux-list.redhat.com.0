Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F100B3D1946
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 23:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626903483;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+8tFIX4fz01otd8Q4np6O2fBTLz3D4ApVvMDiqU2u7o=;
	b=fVyZBeJ3QQOD5YzfNE3cCD/Cj/c+mh6uZe38LAPPbUBpKxYwDeb4exQzjycFrlZfrUITZF
	bg/Oi4Q5iayFucQqQd9YkO0gCgICCONp/cjcbIp3MjwWuFzhGiB2Uwf5n7Zs5/yGokVog9
	gbsRA66JvSZvlh7QBaGLiAZt5O/lNmU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-521-KVQFBRD6P_yQfmuu1r8lAQ-1; Wed, 21 Jul 2021 17:38:01 -0400
X-MC-Unique: KVQFBRD6P_yQfmuu1r8lAQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 045C5190B2A5;
	Wed, 21 Jul 2021 21:37:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 60D5460854;
	Wed, 21 Jul 2021 21:37:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1AF084BB7C;
	Wed, 21 Jul 2021 21:37:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LLbiEM023799 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 17:37:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 828632021454; Wed, 21 Jul 2021 21:37:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DA1F2028650
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 21:37:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D18EE80120D
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 21:37:41 +0000 (UTC)
Received: from gateway13.unifiedlayer.com (gateway13.unifiedlayer.com
	[74.220.209.164]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-5-gAJCtnF2OZ2K_BoBJfcIYw-1; Wed, 21 Jul 2021 17:37:39 -0400
X-MC-Unique: gAJCtnF2OZ2K_BoBJfcIYw-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway13.unifiedlayer.com (Postfix) with ESMTP id 2415B200DFDD5
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 16:12:41 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id 6JWDmnh2OtGNQ6JWDms7Yq; Wed, 21 Jul 2021 16:12:41 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:34697 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1m6JWC-000tS0-OQ
	for blinux-list@redhat.com; Wed, 21 Jul 2021 16:12:40 -0500
Date: Wed, 21 Jul 2021 16:12:39 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: audio cutting and exporting
Message-ID: <20210721161239.171ebc50@bigbox.attlocal.net>
In-Reply-To: <ddddb6cd-5f17-c0ab-1b56-e5ee9281c84b@gmail.com>
References: <ddddb6cd-5f17-c0ab-1b56-e5ee9281c84b@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1m6JWC-000tS0-OQ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:34697
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  Beyond the other options folks have recommended, here are
two more:

1) if your input files are MP3, using "mp3splt" (that's "split"
without the letter "i") manages to do it without losing quality as
would normally happen if you load a .mp3 converting it to raw audio
data, slice & dice, and then re-encode it back as a new .mp3 file.

I use this for automating the removal of some annoying adverts in my
podcasts. This splits off the first 40 seconds ("0.40" is "0 minutes
and 40 seconds") and the last (EOF=end-of-file) 30 seconds:

  mp3splt -o "%n_%f" podcast.mp3 0.40 EOF-0.3

It produces output files for each of those parts, but you can then
delete the parts you don't want.  It requires knowing where the
split-points are that you want to chop at.  Additionally, there's
"mp3join" which will paste such pieces back together, allowing you to
chop them up with mp3splt and stitch them back together in the order
you want without re-encoding the audio.

2) if you're processing .wav files, you can use "sox" 

 sox file_in.wav file_out.wav trim 30 $((20*60))

which will produce "file_out.wav" starting 30 seconds in and output
the 20 minutes following that.  It will work for a variety of
input/output formats, but transcodes, so you can lose sound quality.

Hopefully this puts a few more tools in your belt.

-tim


On July 16, 2021, Linux for blind general discussion wrote:
> Hi,
> 
> I am looking for accessible and easy to use audio application,
> which allows me to:
> 
> - select sound from point a to point b
> 
> - delete, move or export selected section
> 
> - export the result in multiple formats.
> 
> I know about Audacity, but maybe you know some more accessible and
> more easy to use editor.
> 
> My environment is Fedora 34 with Mate desktop and with all a11y 
> variables enabled.
> 
> Thanks,
> 
> Pavel
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

