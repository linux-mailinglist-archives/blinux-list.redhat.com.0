Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 626549C7EB
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 05:26:13 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6D9E7A2F6A0;
	Mon, 26 Aug 2019 03:26:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32C3F60BE2;
	Mon, 26 Aug 2019 03:26:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 70D7E1800B74;
	Mon, 26 Aug 2019 03:26:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q3Pw48017651 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 23:25:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 93CDF5C28F; Mon, 26 Aug 2019 03:25:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx14.extmail.prod.ext.phx2.redhat.com
	[10.5.110.43])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E9525C3FD
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 03:25:56 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 828DA308FBFC
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 03:25:54 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id z17so13843942otk.13
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 20:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=bfyuTqfmRMhP97L1JZbjL6lgnPDN63Sh0JQG4juTlbo=;
	b=ucrJSuUePQpfaznuMtl+wnbOccswS04Vlev6vPC6WvlMytda1tWG3SwsaSfUjbpX8G
	tAPdQ+VF63TOpYH5X7FfaUeFpEHrxSYOrSqSADRP3rQHwdm5+mkZwun/UCmgGaRpzotg
	zMj0ZBoZcdIYu7UdfF/u7evj7gXZNyA2RjGc4FyQmqr7Tq4rtDphNYd9KHMNLwic80Li
	EIcXTKG/nE9xcGIzej9ASOhDQqoONCWiMeNfz4PQJs8s7Qj6PkAI3g3Z+Ar/LsZLMUDD
	DIqWqTvHcYT59z5BjEDs85eLj3cPtVzb7FIXilUCgGZLjNhhRa8DBjX08TrHO9Gvvr0J
	YU+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=bfyuTqfmRMhP97L1JZbjL6lgnPDN63Sh0JQG4juTlbo=;
	b=fYFICNJGyFwXizFlHUTZVxZNaT3rhfzIUvzJf40UFj6FR6DssAx2RHMU/fHsLjAjnQ
	0WFMU1VyB5aunRVm9JAw8rUEgKBTR3YSvwUaGV2N0t89J4r05b3uhhb6prVVUNLl1+Y1
	dd+kNZ+B7tCTQ8tPW5sqJHGSWZpiMPkeJFE8MX+snRkSW0fQMUBgVP/lslK2R0OAI7a9
	bFOXNHMfvrcUf7JD9mliMi7DRkA4tq/LA/PqmCji1hBouLPiygIZizSZ3S+WknwXNwPD
	MhN34ZzIpe7xJVcOpN2d5fGsU/nepddLlXaAjmBtrXc0JWYxVFqGE4qVonX+ugkgsKun
	X+vg==
X-Gm-Message-State: APjAAAUK07dKcabuJOA4NXBbilf7Yba8TcUTkx/afhn7Dpmkn94WEu81
	oVp7z+t25FOB+9EmjwFBbyoDrv2g+FiL+GQy+YqSew==
X-Google-Smtp-Source: APXvYqyEAY2rnwIA+Qn6Jpmw5mTweJlLUWs9sfOsrPz8W6lQp7Z3qyQl5X54QOSurWt+m+dnmlPneGixDNqtLHyKiAA=
X-Received: by 2002:a05:6830:1683:: with SMTP id
	k3mr14215038otr.103.1566789953644; 
	Sun, 25 Aug 2019 20:25:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Sun, 25 Aug 2019 20:25:53 -0700 (PDT)
In-Reply-To: <Pine.LNX.4.64.1908252207170.13997@server2.shellworld.net>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
	<7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
	<Pine.LNX.4.64.1908250041020.12504@server2.shellworld.net>
	<6acc536b-99c9-21f7-1d40-be4d10abab70@GMAIL.COM>
	<Pine.LNX.4.64.1908251207060.2365@server2.shellworld.net>
	<a1ef7648-72f7-8fc7-e5b5-142187a91cc0@GMAIL.COM>
	<74ebe647-3c78-b87d-c7a3-aa65d2d688d1@gmail.com>
	<20190825.212134.847.19@192.168.1.131>
	<64b22aae-23e5-d645-eeb9-6c7646972090@gmail.com>
	<20190825.213109.635.20@192.168.1.131>
	<Pine.LNX.4.64.1908251933090.10144@server2.shellworld.net>
	<CAO2sX302GFCv+K1uzUE6NqFiaJb96ppT1=J2woNoWOqi9bdjQg@mail.gmail.com>
	<Pine.LNX.4.64.1908252016050.12148@server2.shellworld.net>
	<CAO2sX30e6CZUrkvoamGbri5gDitrtnGvLh4J0QMbxYo2zutJrw@mail.gmail.com>
	<Pine.LNX.4.64.1908252207170.13997@server2.shellworld.net>
Date: Mon, 26 Aug 2019 03:25:53 +0000
Message-ID: <CAO2sX33WwZ55ekxV=a1aggdbRDNTDYxGx-z=dWhw=1743yX1jg@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.43]);
	Mon, 26 Aug 2019 03:25:54 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]);
	Mon, 26 Aug 2019 03:25:54 +0000 (UTC) for IP:'209.85.210.47'
	DOMAIN:'mail-ot1-f47.google.com' HELO:'mail-ot1-f47.google.com'
	FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.097  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.47 mail-ot1-f47.google.com 209.85.210.47
	mail-ot1-f47.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.43
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.68]); Mon, 26 Aug 2019 03:26:12 +0000 (UTC)

Okay, such a sound sensitivity certainly complicates matters, and I
wouldn't even know where to start with offering advice, especially
since I've never even heard of such a thing before. That said, best I
can remember, this is the first mention in this thread of anyone
having a disability other than blindness/visual impairment, so even if
I knew some people had such strong reactions to certain sounds and
knew anything about the kinds of accommodations that work for some
with such sound sensitivities, I wouldn't have known such was relevant
here. My advice wouldn't work for a blind-deaf person or someone whose
hands are too arthritic to type either and probably wouldn't help even
a fully able person if they know nothing of English. Still, unless
there's a PRNG in play, running a given input through a computer
program should produce the same output regardless of who's running the
program.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
