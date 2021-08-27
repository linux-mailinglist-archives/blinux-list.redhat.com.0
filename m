Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id EE7433FA043
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 22:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630094587;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0rdiU9EWO2gV3udbeM0CFfL94p8QvZTm0VLaw2BOP2U=;
	b=KK1nzihCnNT7UJvl2Pe3HA1dm1lUP+4RW3ow8HPhpiSg8bama/5WoNDuk6Ja+6QOhzJz/z
	YHSABhx29RoQ5+5sAsAzu7z4Fjgwh2zos2QVD4CaspSGZL0O3JltwgNXB+J6Wxa2uXnTWP
	9oMkrIqOmVB1mh3GCmcANspGLWs9+4I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-461-B1T6eyEnOpWd65d4DNVo5w-1; Fri, 27 Aug 2021 16:03:05 -0400
X-MC-Unique: B1T6eyEnOpWd65d4DNVo5w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB4D6760C1;
	Fri, 27 Aug 2021 20:03:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 741786A905;
	Fri, 27 Aug 2021 20:03:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 200FA181A0F1;
	Fri, 27 Aug 2021 20:02:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RK2rkV022533 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 16:02:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D1DDA19A769; Fri, 27 Aug 2021 20:02:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CCC251A91FC
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 20:02:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B2C2101A529
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 20:02:51 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-35-o2lMeCYRN42CB_cwQ-pJCQ-1; Fri, 27 Aug 2021 16:02:48 -0400
X-MC-Unique: o2lMeCYRN42CB_cwQ-pJCQ-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4Gx9cR5k5Cz8tQY
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 20:02:47 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id H-tA_Xa42vfw for <blinux-list@redhat.com>;
	Fri, 27 Aug 2021 20:02:46 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4Gx9cQ2zSQz8tQW
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 20:02:46 +0000 (UTC)
Message-ID: <20210827.200251.396.9@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: unable to install from aur
Date: Fri, 27 Aug 2021 15:02:51 -0500
MIME-Version: 1.0
In-Reply-To: <94329dd7-51a8-3124-583b-508c431cafd8@gmail.com>
References: <20210827.181429.958.4@[192.168.1.100]>
	<f27ef494-11d0-71e1-dc0e-f93762bfb28b@gmail.com>
	<20210827.191148.445.6@[192.168.1.100]>
	<94329dd7-51a8-3124-583b-508c431cafd8@gmail.com>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17RK2rkV022533
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

gpg: requesting key from 'https://db.debian.org/fetchkey.cgi?fingerprint=7A5A4E80E40097BAF6EAD638449190F3235ABD3B'
gpg: WARNING: unable to fetch URI https://db.debian.org/fetchkey.cgi?fingerprint=7A5A4E80E40097BAF6EAD638449190F3235ABD3B: Server indicated a failure
gpg: key fetch failed: Server indicated a failure

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Fri, 27 Aug 2021 22:31:06 +0300
Subject: Re: unable to install from aur

> 27.08.2021 22:11, Linux for blind general discussion ?????:
> Linux for blind general discussion <blinux-list@redhat.com> wrote:
> please leave only one keyserver option. i recommend using
> hkps://keyserver.ubuntu.com
>
> This did dnot work. I still get, for example:
>      lltag-0.14.6.tar.gz ... FAILED (unknown public key 449190F3235ABD3B)
> ==> ERROR: One or more PGP signatures could not be verified!
>
yes this key hasn't been uploaded to any keyserver.
try: gpg --fetch 
https://db.debian.org/fetchkey.cgi?fingerprint=7A5A4E80E40097BAF6EAD638449190F3235ABD3B

-- 
Sincerely, Alexander.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

