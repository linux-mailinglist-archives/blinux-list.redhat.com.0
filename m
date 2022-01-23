Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EE410497657
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jan 2022 00:33:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642980813;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nRfEC0A0LG3uZcv8bgnpR4sz/mg9LWvlVquKj/r9KKE=;
	b=cMdPH27IWF0BmBhRCuT2dx5WoO0BZJRLGB8LfIft7ZTIVGiblJG1Sug8ElJfr+NTaEzyvx
	FEsuaVzpvXurd9bvTYftaHHzssxUXzjNmkScSBWCH0fPKOFSJG5D06eSs7mo16TcohAl7H
	7lFFxTNy5Bme+d2DGNlhAXbUFZiFfn0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-19-1AfoRsVEONy5zZq5MUtJvg-1; Sun, 23 Jan 2022 18:33:29 -0500
X-MC-Unique: 1AfoRsVEONy5zZq5MUtJvg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 519842F26;
	Sun, 23 Jan 2022 23:33:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6722955F54;
	Sun, 23 Jan 2022 23:33:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 47B6E1809CB8;
	Sun, 23 Jan 2022 23:33:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NNWtcU008784 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 18:32:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7C1FB2166B46; Sun, 23 Jan 2022 23:32:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 778322166B25
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 23:32:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9CFE380393E
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 23:32:51 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-325-yTcSK7NrOSivgXIE4SMi1w-1; Sun, 23 Jan 2022 18:32:49 -0500
X-MC-Unique: yTcSK7NrOSivgXIE4SMi1w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JhqD12X5bz2wX2
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 18:32:49 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JhqD12TFXzcbc; Sun, 23 Jan 2022 18:32:49 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JhqD127KczcbC
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 18:32:49 -0500 (EST)
Date: Sun, 23 Jan 2022 18:32:49 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: web page problem
In-Reply-To: <alpine.DEB.2.21.2201231537250.9928@nkl.local>
Message-ID: <c7152d36-aef-d9ed-dce4-aad6ff49f86@panix.com>
References: <2ca4507f-ab68-76a0-8bdf-56502d49fa4d@panix.com>
	<alpine.DEB.2.21.2201231136070.9928@nkl.local>
	<2bbfbfc9-f8d3-9c36-5b5-2de9e3f2fb3e@panix.com>
	<alpine.DEB.2.21.2201231537250.9928@nkl.local>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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

Thanks, that works.  That shortens my script considerably.  Now I need
arrange to spider the website for the sha512 file and if that's not
available exit the script.  That should be a short operation.  The large
file takes time downloading and the original script I have runs the
integrity check on the file once finished.
I used the b and c options on wget to make log files and some code to
report on download progress in a more civilized fashion than wget and when
the log file was finished remove it and exit the loop.
while [ -f wget-log ]; do
sleep 30
wc -l wget-log && grep -i saved wget-log && rm wget-log
done
Maybe I can get wget --spider to put the urls in jenux.inp then download
those andrun basename on the sha512 file and pass that to sha512sum -c for
an integrity check once download is complete.
This is more interesting than I thought it would be before trying this
again.


On Sun, 23 Jan 2022, Linux for blind general discussion wrote:

> Hi
>
> Try something like
>
> wget --recursive --no-check-certificate -A 'Jenux-????.??.??-dual.iso'
> https://nashcentral.duckdns.org/projects/
>
> on one line. This will download only the .iso file but replicates the
> directory structure including hostname. Add the '--no-directories' to get
> files to the current directory.
>
>
> --no-check-certificate was included because site has expired certificate.
>
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

