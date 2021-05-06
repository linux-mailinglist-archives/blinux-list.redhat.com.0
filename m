Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 147CD375D0C
	for <lists+blinux-list@lfdr.de>; Fri,  7 May 2021 00:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620338718;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=lB42fUru22EKUiqLQ0277/TJo5rdY3TUV6/f0qekm/w=;
	b=hy6Nz2PSuNKpsYMFlPaxV4Cs4jA9HxbBaIrxoSYfZNqQfYkyZZG1IgcXIoj82XNvi75cPC
	6bWcFTIRJNjgjte1GB2E1kJ6bTijSrBJ1YEsUCAeqHzLmYU//kU1XNq7uBPtBjo7vrS+Xu
	DYuNR0YbAKk8sWxvOXHXCInjJivgAmk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-575-tSOes4ulN8qWTUpne4rdIA-1; Thu, 06 May 2021 18:05:14 -0400
X-MC-Unique: tSOes4ulN8qWTUpne4rdIA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 352B6C73A7;
	Thu,  6 May 2021 22:05:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5BBF010023AF;
	Thu,  6 May 2021 22:05:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 072C018095C4;
	Thu,  6 May 2021 22:04:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 146M4l8c013773 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 6 May 2021 18:04:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 525751649F4; Thu,  6 May 2021 22:04:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4CE441692BE
	for <blinux-list@redhat.com>; Thu,  6 May 2021 22:04:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CC369857AA4
	for <blinux-list@redhat.com>; Thu,  6 May 2021 22:04:44 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-581-JF4if3QGNZi1yeZylg-QlA-1;
	Thu, 06 May 2021 18:04:41 -0400
X-MC-Unique: JF4if3QGNZi1yeZylg-QlA-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4AD59A1CC5
	for <blinux-list@redhat.com>; Thu,  6 May 2021 23:04:23 +0200 (CEST)
Subject: Fwd: [slint] Dae, Digital Audio Editor
References: <YJRjp4APH7G5Rpk9@gungnir.localdomain>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Forwarded-Message-Id: <YJRjp4APH7G5Rpk9@gungnir.localdomain>
Message-ID: <8c454734-b1fa-dcc7-56fc-d26120f43385@slint.fr>
Date: Fri, 7 May 2021 00:03:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <YJRjp4APH7G5Rpk9@gungnir.localdomain>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="------------DCBB1D2CCF3DDB76C7E7B647"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DCBB1D2CCF3DDB76C7E7B647
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,

I forward below a message that could interest for this list, as
dae is accessible.

A Storm is not registered to this list please CC him your answers.

-------- Forwarded message --------
Sujet=C2=A0: Dae, Digital Audio Editor
Date=C2=A0: Thu, 6 May 2021 17:46:15 -0400
De=C2=A0: Storm Dragon <storm_dragon@linux-a11y.org>
R=C3=A9pondre =C3=A0=C2=A0: slint@freelists.org
Pour=C2=A0: slint@freelists.org, Stormux <stormux@groups.io>, orca-list@gno=
me.org

Howdy All,

A while ago, Willem van der Walt wrote a piece of software called dae. I=20
was wondering if anyone knows if it was ever updated to python3?

It is included in Slint, and the current version uses python2.7. Of=20
course, as you know if you are on the Slint list, there's a major python=20
upgrade and cleanup under way. As part of that, dae needs to be updated.=20
It looks easy enough to do. I was just wondering if it has already been=20
done.

The second part of this is, how many people are currently using dae. If=20
we have 0 users, I probably won't put forth the effort of updating the=20
code. So, if you do use it please let me know so if there is no response=20
regarding a python3 version, I will know that it actually needs doing.

Thanks,
Storm

--=20
=E2=9B=88=F0=9F=90=B2
Accessible low cost computers for everyone! https://stormux.org
Stormux on Ko-fi: https://ko-fi.com/stormux
Get my public PGP key: gpg --recv-key 43DDC193
Most of you are familiar with the virtues of a programmer. There are=20
three, of course: laziness, impatience, and hubris.

Become a Stormux Patron: https://patreon.com/stormux


--------------DCBB1D2CCF3DDB76C7E7B647
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--------------DCBB1D2CCF3DDB76C7E7B647--

