Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B61E9C6FD
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 03:30:25 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1835B18C8921;
	Mon, 26 Aug 2019 01:30:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B163C5D704;
	Mon, 26 Aug 2019 01:30:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7061A1800B74;
	Mon, 26 Aug 2019 01:30:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q1UEMQ015613 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 21:30:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 220D85DA8C; Mon, 26 Aug 2019 01:30:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx15.extmail.prod.ext.phx2.redhat.com
	[10.5.110.44])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B0715D9DC
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 01:30:10 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 38B0F3083394
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 01:30:09 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id l9so16470642qtu.6
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 18:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=HEKBQ3HIxY7P53IjVeUrrHB/wZjZXj1793WSEuV0fLU=;
	b=WGuBx6pl/Zc4d4opn7BALdR8lxb1oqijAA4580kf6Yf7bffWVD78r2ntGkTsmcKwMV
	1iFAb7shxwxsQw67vm3j1xGx0xsEY+ntBZrCExhR2Q3GBlusdJJ874q5a8/XbCpVXL7t
	itmLD04+5lbMRmamLXnQaRcJ5Cy5VtzP/gmMKScNzYXpzoG3GS0k1fErEHBeSb7I1iOV
	nccB+pyv2NL9933AWaJcXopsyK5YpO7uhdEJK3IS4qlewLkhOvg2PnavyzE4B2iw4ICw
	N2k0InFAZlN6E9k7/FG9++j8G6dUbwYN6ZE6nVlnlQUYNJboPgE/lgwwn77n7GDPaKfM
	dngw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=HEKBQ3HIxY7P53IjVeUrrHB/wZjZXj1793WSEuV0fLU=;
	b=jIyFsAfdJMaNoScgZXBwMs+FdW/ysbYI6hjpVlhpXWtKs9CdjwVQVNHHppFKR0SRHN
	mQT0tHe3kktliOjD5FoLWKg+0ffNwxfPlp5/SKXRx+JIQqMkY4Ux/cSdubNCPMcFAbFR
	Ga8heFm74XJcgJ8/V6SXgmpAdKnlUY3tGjasbwA+bxzwGppaCirz9GXp/iF57V7hMsxX
	Sfc85sxT1rz8jvkEN17uC2oMAwfXpFrXabItw0FLm/t4HNNNlWF4XeHDqfMNP9VC2/5m
	4eXV8Ln5tLfFQVEmYRCdUfV9unU2xRppCUAUJ3hyHtxak20P5nGAq63YN+4/j48OO5L9
	fpeA==
X-Gm-Message-State: APjAAAUuKKmWFyJ3cQY+4c3Jyz/WXn8BpLAKRLuefu0ExX8X9aP1pYkU
	yNW7yIss57LJ+LkdpbOM2rwGYLCprI8Fq5H8uZcYcM1jXYs=
X-Google-Smtp-Source: APXvYqyREB705+2+AU6FMN7yvJm3fEaVufCSQpCqLaTCdDv84zu8/p31Fajcg8qEBxSFUnCVCBg0Sh3lqqdqIAMGlvQ=
X-Received: by 2002:ac8:41d7:: with SMTP id o23mr15653784qtm.268.1566783008214;
	Sun, 25 Aug 2019 18:30:08 -0700 (PDT)
MIME-Version: 1.0
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
	<CAO2sX30wUQLmSwgswdFibSYszEVQdeLRmx1_8PNYN0oH6W_-qg@mail.gmail.com>
	<Pine.LNX.4.64.1908251945510.10144@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.1908251945510.10144@server2.shellworld.net>
Date: Sun, 25 Aug 2019 18:29:56 -0700
Message-ID: <CAJ1g4g9SkfiHNPb8f7MYNG4iyv4dYwtM1N7JRDraz=cxdg-HDA@mail.gmail.com>
Subject: Re: amazon?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.44]);
	Mon, 26 Aug 2019 01:30:09 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]);
	Mon, 26 Aug 2019 01:30:09 +0000 (UTC) for IP:'209.85.160.172'
	DOMAIN:'mail-qt1-f172.google.com'
	HELO:'mail-qt1-f172.google.com' FROM:'marbux@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.160.172 mail-qt1-f172.google.com 209.85.160.172
	mail-qt1-f172.google.com <marbux@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.44
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x7Q1UEMQ015613
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.70]); Mon, 26 Aug 2019 01:30:23 +0000 (UTC)

T24gU3VuLCBBdWcgMjUsIDIwMTkgYXQgNTowMCBQTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uCjxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPgoKPiBTaXplIG9mIGEg
Y29tcGFueSBtYWtlcyBubyBkaWZmZXJlbmNlIGhlcmUgYmVjYXVzZSBBbWF6b24gaGFzIGZhciBt
b3JlCj4gcmVzb3VyY2VzIGF2YWlsYWJsZSB0byBpbnN1cmUgIGV2ZXJ5b25lIGNhbiBzaG9wIGVx
dWFsbHkuCj4gY29tZSAgdG8gdGhpbmsgb2YgaXQsICBjb3VsZCBub3QgRG9taW5vJ3MgYXJndWUg
dGhleSBoYXZlIHRvbyBmZXcgcmVzb3VyY2VzCj4gdG8gIGFjY29tbW9kYXRlPyAgVGhleSB3b3Vs
ZCBiZSB3cm9uZyBvZiBjb3Vyc2UsIHNpbXBsaWZpY2F0aW9uIGlzIGxlc3MKPiBleHBlbnNpdmUu
ICBCdXQgSSB3b25kZXIgaWYgdGhhdCBtaWdodCBiZSB0aGVpciBhcmd1bWVudD8KCkRvbWlubydz
IHBldGl0aW9uIHRvIHRoZSBTdXByZW1lIENvdXJ0IGlzIGhlcmUuCjxodHRwczovL3d3dy5zdXBy
ZW1lY291cnQuZ292L0RvY2tldFBERi8xOC8xOC0xNTM5LzEwMjk1MC8yMDE5MDYxMzE1MzMxOTQ4
M19Eb21pbm9zUGV0aXRpb24ucGRmPgooUERGKS4gSXQgaGFzIHRocmVlIG1haW4gYXJndW1lbnRz
OiBbaV0gdGhlIGNvdXJ0cyBvZiBhcHBlYWxzIGFyZQpiYWRseSBzcGxpdCBvbiB0aGUgZ292ZXJu
aW5nIGxhdzsgW2lpXSBDb25ncmVzcyBoYXMgbmV2ZXIgcnVsZWQgdGhhdApUaXRsZSBJSUkgYXBw
bGllcyB0byB3ZWIgc2l0ZXMgYW5kIG1vYmlsZSBhcHBzOyBbaWlpXSBpbiBhbnkgZXZlbnQsCnRo
ZXJlIGFyZSBubyBnb3Zlcm5tZW50LWVzdGFibGlzaGVkIHN0YW5kYXJkcyB0byBmb2xsb3cgYW5k
IHRoZXJlZm9yZQpsaXRpZ2F0aW9uIGNhbiBub3QgYmUgZW5kZWQgYnkgYXR0ZW1wdGluZyB0byBt
YWtlIHNpdGVzIGFuZCBhcHBzCmFjY2Vzc2libGUuCgpPbiB0aGVpciBmaXJzdCBwb2ludCwgdGhl
eSBhcmUgY29tcGxldGVseSBhY2N1cmF0ZSBhbmQgdGhlIFN1cHJlbWUKQ291cnQgaXMgbGlrZWx5
IHRvIHRha2UgdGhlIGNhc2UgdG8gcmVzb2x2ZSB0aGUgc3BsaXQgYW1vbmcgdGhlCmFwcGVhbHMg
Y291cnRzLiBPbiB0aGVpciBzZWNvbmQgcG9pbnQsIHRoaXMgaXMgdGhlIGlzc3VlIGludm9sdmVk
IGluCnRoZSBzcGxpdCBhbW9uZyB0aGUgY291cnRzIG9mIGFwcGVhbHMuIE9uIHRoZWlyIHRoaXJk
IHBvaW50LCBpdCdzIGEKdmVyeSBzdHJvbmcgYXJndW1lbnQuCgpPbiB0aGUgZWZmZWN0IG9mIGxh
d3N1aXRzLCBJJ2xsIHNwZWFrIGFzIGEgcmV0aXJlZCBhdHRvcm5leSB3aG8Kc3BlY2lhbGl6ZWQg
aW4gdG9pbGV0IHRyYWluaW5nIG11bHRpbmF0aW9uYWwgY29ycG9yYXRpb25zIGZyb20KZGlzY2hh
cmdpbmcgcG9pc29ucyBpbnRvIG91ciBuYXRpb24ncyB3YXRlcndheXMuCgpMYXdzdWl0cyBjYW4g
YmUgaGlnaGx5IGVmZmVjdGl2ZS4gT2J2aW91c2x5LCBpZiBhIGNvdXJ0IGlzc3VlcyBhbgppbmp1
bmN0aW9uIHJlcXVpcmluZyB0aGF0IGEgY29tcGFueSBkbyBvciByZWZyYWluIGZyb20gZG9pbmcK
c29tZXRoaW5nLCB0aGUgY29tcGFueSBoYXMgbm8gcHJhY3RpY2FsIGNob2ljZSBidXQgdG8gY29t
cGx5LgoKSW4gY2FzZXMgdGhhdCBhd2FyZCBkYW1hZ2VzLCB5b3UgbmVlZCB0byB1bmRlcnN0YW5k
IGEgYml0IGFib3V0IGhvdwpsYXJnZSBjb21wYW5pZXMgcmVhY3QgdG8gYmVpbmcgc3VlZCBmb3Ig
ZGFtYWdlcy4gWW91IG11c3QgYWxzbwp1bmRlcnN0YW5kIHRoYXQgbm8gb25lIGlzIGluIGNoYXJn
ZSBvZiBhIGNvcnBvcmF0aW9uLiBBbGwgb2ZmaWNlcnMKaGF2ZSBjbG9zZWx5LWRlZmluZWQgcmVz
cG9uc2liaWxpdGllcyBhbmQgZG8gbm90IGRhcmUgaW52YWRlIHNvbWVvbmUKZWxzZSdzIGFyZWEg
b2YgcmVzcG9uc2liaWxpdHkgZm9yIGZlYXIgb2Ygc3RhcnRpbmcgYSB0dXJmIHdhci4gV2hlbgp0
aGUgY29tcGFueSBpcyBzdWVkLCBqdXN0IGFib3V0IGV2ZXJ5b25lIHdhbnRzIG5vdGhpbmcgdG8g
ZG8gd2l0aCB0aGUKaXNzdWUgc2luY2UgaXQgY291bGQgbGVhZCB0byBsb3NzIG9mIHBvd2VyIGFu
ZCByZXNwb25zaWJpbGl0eS4gVGhlCmJ1Y2sgZ2V0cyBwYXNzZWQgdG8gdGhlIGNvbXBhbnkncyBv
ZmZpY2Ugb2YgZ2VuZXJhbCBjb3Vuc2VsLCB3aG8gd2lsbAphcnJhbmdlIGZvciBvdXRzaWRlIGNv
dW5zZWwgdG8gcmVwcmVzZW50IHRoZSBjb21wYW55IGluIHRoZSBsYXdzdWl0LgoKVGhlIGdlbmVy
YWwgY291bnNlbCB3aWxsIGFsc28gcHJlcGFyZSBhIGxlZ2FsIG9waW5pb24gb24gdGhlIGxlZ2Fs
aXR5Cm9mIHdoYXQgaGFwcGVuZWQuIE5vIENFTyB3aWxsIHRha2UgcmVsZXZhbnQgYWN0aW9uIGJl
Zm9yZSByZXZpZXdpbmcKdGhlIGdlbmVyYWwgY291bnNlbCdzIG9waW5pb24sIGFuZCB0byB0YWtl
IGFueSBhY3Rpb24gZGVlbWVkIHVubGF3ZnVsCmJ5IHRoZSBnZW5lcmFsIGNvdW5zZWwgaXMgc3Vp
Y2lkYWwgZm9yIHRoZSBDRU8gc2hvdWxkIGEgc2Vjb25kIGxhd3N1aXQKYmUgZmlsZWQgYnkgc29t
ZW9uZSBlbHNlLiBUaGUgQ0VPIHdvdWxkIGJlIGxlZnQgd2l0aG91dCBldmVuIGEgZmlnCmxlYWYg
dG8gcHJvdGVjdCBoaW1zZWxmIGZyb20gdGhlIGJvYXJkIG9mIGRpcmVjdG9ycycgb3ZlcnNpZ2h0
LgoKRm9yIHNtYWxsZXIgY29tcGFuaWVzIHRoYXQgZG8gbm90IHNlbGYtaW5zdXJlLCB0aGVpciBs
ZWdhbCBkZWZlbnNlIGlzCnByb3ZpZGVkIGJ5IHRoZWlyIGluc3VyYW5jZSBjb21wYW55LiBUaGUg
aW5zdXJhbmNlIGNvbXBhbnkgYWxzbyBsb29rcwphdCB0aGUgY29tcGFueSBiZWhhdmlvciB0aGF0
IHByb2R1Y2VkIHRoZSBjbGFpbSBmb3IgZGFtYWdlcyBhbmQgdW5sZXNzCml0IGlzIHNxdWVha3kg
Y2xlYW4sIHRoZSBjb21wYW55IHdpbGwgYmUgbG9va2luZyBhdCBhbiBhZGRpdGlvbmFsCnJpZGVy
IG9uIHRoZWlyIGluc3VyYW5jZSBwb2xpY3kgY29tZSB0aW1lIGZvciByZW5ld2FsIHRoYXQgZGVu
aWVzCmNvdmVyYWdlIHNob3VsZCB0aGVyZSBiZSBhIHJlb2NjdXJyZW5jZSBvZiB0aGUgc2FtZSBt
aXNiZWhhdmlvci4KCkluIG15IG9waW5pb24sIHdoYXQgaXNuJ3QgZmFpciBhYm91dCBhbGwgb2Yg
dGhpcyBpcyB0aGUgc2hlZXIgZXhwZW5zZQpvZiBvYnRhaW5pbmcganVzdGljZSB0aHJvdWdoIG91
ciBjb3VydCBzeXN0ZW0uIEl0IGlzIGEgc3lzdGVtIGRlc2lnbmVkCmZvciByaWNoIHBlb3BsZS4g
VGhhdCBtZWFucyB0aGF0IGxhd3llcnMgaGF2ZSB0byB0dXJuIGRvd24gbWFueQptZXJpdG9yaW91
cyBjYXNlcyBzaW1wbHkgYmVjYXVzZSB0aGV5IGFyZSBub3Qgc3VyZSB3aW5uZXJzLCBvciB0aGUK
YW1vdW50IG9mIGRhbWFnZXMgdGhlIGNsaWVudCBpcyBlbGlnaWJsZSBmb3IgaXNuJ3QgZW5vdWdo
IHRvIHBheSB0aGUKbGVnYWwgZmVlcywgb3IgLi4uCgpCZXN0IHJlZ2FyZHMsCgpQYXVsIEUuIE1l
cnJlbGwsIEouRC4KCi0tIApbTm90aWNlIG5vdCBpbmNsdWRlZCBpbiB0aGUgYWJvdmUgb3JpZ2lu
YWwgbWVzc2FnZTogIFRoZSBVLlMuIE5hdGlvbmFsClNlY3VyaXR5IEFnZW5jeSBuZWl0aGVyIGNv
bmZpcm1zIG5vciBkZW5pZXMgdGhhdCBpdCBpbnRlcmNlcHRlZCB0aGlzCm1lc3NhZ2UuXQogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICDCr1xfKOODhClfL8Kv
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=
