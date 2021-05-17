Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E7A2D382226
	for <lists+blinux-list@lfdr.de>; Mon, 17 May 2021 02:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621210690;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eSFTw3B1KeJbszuZZOacIOLENGuECQAkd+rQaO4Rx9M=;
	b=W1VCUJtTBUJmluubqtlemcKYOfp/FShdUQhXNrfhuHufGUg3fogZy3wvsF6V1XEK8SiT9n
	KeLHNRmxE/P0n0kUQDcNkCjNCCH7+i3FEyNx0EOBckQ5P8Fht9WHlnSTCIIu5io7+ckh8t
	B7cM5fAhtRZKY85k3vJkTwdIQPCIDaU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-sx3d9pGqO_CsOB3ya8owDw-1; Sun, 16 May 2021 20:18:07 -0400
X-MC-Unique: sx3d9pGqO_CsOB3ya8owDw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03B3C802938;
	Mon, 17 May 2021 00:18:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D84BD5C541;
	Mon, 17 May 2021 00:17:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 211BA5534B;
	Mon, 17 May 2021 00:17:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14H0HevO016799 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 May 2021 20:17:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 721E4110DBC8; Mon, 17 May 2021 00:17:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D4F5110DBC6
	for <blinux-list@redhat.com>; Mon, 17 May 2021 00:17:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CAC3833942
	for <blinux-list@redhat.com>; Mon, 17 May 2021 00:17:37 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-228-qLTGVaRKP7mb4IksSvW7ug-1; Sun, 16 May 2021 20:17:35 -0400
X-MC-Unique: qLTGVaRKP7mb4IksSvW7ug-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Fk07y2qZ3z2BFl;
	Sun, 16 May 2021 20:17:34 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Fk07y28fRzcbc; Sun, 16 May 2021 20:17:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Fk07y1pZdzcbW;
	Sun, 16 May 2021 20:17:34 -0400 (EDT)
Date: Sun, 16 May 2021 20:17:34 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: InfoWorld: 11 tips for speeding up Python programs (fwd)
In-Reply-To: <alpine.NEB.2.23.451.2105152340010.25128@panix1.panix.com>
Message-ID: <alpine.NEB.2.23.451.2105162013001.13508@panix1.panix.com>
References: <alpine.NEB.2.23.451.2105152340010.25128@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
Cc: orca-list@gnome.org
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am finished with suse notwithstanding an accessible install podcast
becoming available that's understandable.
It appears from my investigation that their installation system you bring
up on boot blocks any accessibility software from being installed or
started so an accessible install can get done with either leap or
tumbleweed.
It's not a complete waste though.  I wrote a little script which is now
set to get opensuse leap but can be set to get anything else off the net
with wget.
Some error on line 6 about too many arguments is speaking in the final
output but other than that the script works.

#!/usr/bin/env bash
# file: getsuse.sh - get full suse version
URL="http://mirror.math.princeton.edu/pub/opensuse-full/opensuse/distribution/leap/15.2/iso/openSUSE-Leap-15.2-DVD-x86_64.iso"
SAVED=''
wget -bc $URL
while [ -z $SAVED ]; do
    SAVED=`grep -i saved wget-log`
done
wc -l wget-log && grep -i saved wget-log
rm wget-log



On Sat, 15 May 2021, Linux for blind general discussion wrote:

>
>
> ---------- Forwarded message ----------
> Date: Thu, 13 May 2021 16:05:17
> From: Jude DaShiell <dashielljude@gmail.com>
> To: fidel.viegas@gmail.com, peter youssef <kingtut41@gmail.com>,
>     Joel Ralon <jralon@comcast.net>, Jude DaShiell <jdashiel@panix.com>
> Subject: InfoWorld: 11 tips for speeding up Python programs
>
> InfoWorld: 11 tips for speeding up Python programs.
> https://www.infoworld.com/article/3044088/11-tips-for-speeding-up-python-programs.html
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

