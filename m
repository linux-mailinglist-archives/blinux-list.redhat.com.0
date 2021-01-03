Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2F2F62E8DD7
	for <lists+blinux-list@lfdr.de>; Sun,  3 Jan 2021 19:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609699884;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=CUYZVv5IXwY1GyfrVmLXtdxd1Rk0SBwubzcPFF+btHo=;
	b=XQvuNflfXch+5lcLSKjx+GBDpLXrXU6kyPEfr638BneXbFM7iuUq1Qdle3LnLYWDS4SIvu
	zmt/hs6YlO1JNuFBMuYfV9rcpPWd+2BX31snlC8Y7HASKZcKQG2le0q99l+joqL6GC+vVc
	cvClsQMqBXICCJ/pKumf1uTxNQtbnMQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-352-stQTQufmN0-UcFy5h4dUTg-1; Sun, 03 Jan 2021 13:51:21 -0500
X-MC-Unique: stQTQufmN0-UcFy5h4dUTg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2679C801A9E;
	Sun,  3 Jan 2021 18:51:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 185475D740;
	Sun,  3 Jan 2021 18:51:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E9FD44A7C6;
	Sun,  3 Jan 2021 18:51:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 103Ip5cA009261 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Jan 2021 13:51:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2FA2B111CD5D; Sun,  3 Jan 2021 18:51:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C312111CA0F
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 18:51:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 07577858EEC
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 18:51:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-468---wLDQ75ONCs5OYS2bB3Yw-1; Sun, 03 Jan 2021 13:51:00 -0500
X-MC-Unique: --wLDQ75ONCs5OYS2bB3Yw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4D87BX2znwzdgB
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 13:51:00 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4D87BX2JYYzcbc; Sun,  3 Jan 2021 13:51:00 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4D87BX21WBzcbW
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 13:51:00 -0500 (EST)
Date: Sun, 3 Jan 2021 13:51:00 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: cli-party package
In-Reply-To: <48a294bd-98cf-726f-29d4-604b1003f72a@slint.fr>
Message-ID: <alpine.NEB.2.23.451.2101031348500.13609@panix1.panix.com>
References: <alpine.NEB.2.23.451.2101031201590.11812@panix1.panix.com>
	<4693c1cb-57db-dd49-c2bd-1421d53467d8@slint.fr>
	<48a294bd-98cf-726f-29d4-604b1003f72a@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="0-1616758283-1609699860=:13609"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--0-1616758283-1609699860=:13609
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Before trying to run cli-party since it was already installed on my=20
machine, I did a git pull and maybe since the git pull didn't find=20
html2text and xidel this is why I'm having the problem with html2text now.=
=20
I'll try another git pull and see if that resolves this situation.



On Sun, 3 Jan 2021, Linux for blind general discussion wrote:

> I just installed the deps using sbopkg, then did this:
> wget=20
> https://gitlab.com/stormdragon2976/cli-party/-/archive/master/cli-party-m=
aster.tar.gz
> tar xf cli-party-master.tar.gz
> cd cli-party
> ./cli-party
>
> It worked.
>
> Didier
>
> Le 03/01/2021 ? 19:17, Linux for blind general discussion a ?crit=C2=A0:
>>  Hi,
>>
>>  This page:
>>  https://gitlab.com/stormdragon2976/cli-party/-/blob/master/cli-party
>>  mentions as dependencies:
>>  bc
>>  dialog
>>  espeak-ng
>>  html2text
>>  sox
>>  xidel
>>
>>  All are included in Slint but html2text and xidel that you can get
>>  using sbopkg
>>
>>  Be aware that xidel (maintained by B. Watson @ https://slackbuildsorg)
>>  requires fpc, also available fom SBo.
>>
>>  Best regards,
>>
>>  Didier
>>  --
>>  Didier Spaier
>>  Slint maintainer
>>
>>  Le 03/01/2021 ? 18:05, Linux for blind general discussion a ?crit=C2=A0=
:
>>>  It turns out the package needed xidel and html2text.=C2=A0 I found tha=
t out by
>>>  analyzing a typescript file in which cli-party was run.=C2=A0 Only pro=
blem is
>>>  I installed html2text on slint and the cli-party game doesn't find
>>>  html2text.=C2=A0 Python is in such a mess now lots of things including=
 pip
>>>  searches no longer work, so it may be necessary to give python some ti=
me
>>>  to sort its mess and for distros to get the replacement packages for a=
ll
>>>  of those deprecated packages.
>>>=20
>>>
>>>  _______________________________________________
>>>  Blinux-list mailing list
>>>  Blinux-list@redhat.com
>>>  https://www.redhat.com/mailman/listinfo/blinux-list
>>>
>>
>>
>>  _______________________________________________
>>  Blinux-list mailing list
>>  Blinux-list@redhat.com
>>  https://www.redhat.com/mailman/listinfo/blinux-list
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
--0-1616758283-1609699860=:13609
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
--0-1616758283-1609699860=:13609--

