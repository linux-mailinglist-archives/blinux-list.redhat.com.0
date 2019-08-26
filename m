Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C1F9CFFC
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 15:02:15 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id CA58B58E23;
	Mon, 26 Aug 2019 13:02:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C075F600C8;
	Mon, 26 Aug 2019 13:02:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A4B331802218;
	Mon, 26 Aug 2019 13:02:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7QD24ST003988 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Aug 2019 09:02:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C2AF860BE2; Mon, 26 Aug 2019 13:02:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx28.extmail.prod.ext.phx2.redhat.com
	[10.5.110.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B90A660F82
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 13:02:02 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com
	[209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 151CB8D5BB3
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 13:02:01 +0000 (UTC)
Received: by mail-yb1-f174.google.com with SMTP id o82so6912187ybg.10
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 06:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=cqXIjEGwA7vOTFyc0y1gQlGZ8154/J+WgWhAVgjYKBE=;
	b=Jk+Yn87wcUrVohDOd/0RB+lgkyVTMCY/eqsCBX9WJRdghIEtUw2AUSq69CSVj5mwCt
	W6Q5uNsUCG7tsH1qsrdwI5UW6cu1rVfYhDw4X1Xnpx0cwYnnAT0z7wZ49aPjaCIcbSxN
	qaOk0QmqpaphFTLDSrpAtCQb3VjYDJNG9HpntTep4Xc18loDoQdzFuBwnNy+5iK3RVmF
	38ednf/N03ugYs9OnjB/ftwubBLj01r50tvOEkWw1KmDYoGbMqfacfmChfOnlT4TmIAx
	dIYZE7ABiuDK/PisG5bTh5KzAX/ch8bz1msO+oFd9VuDExMpYsolwtZCSMt10vGdvM0u
	roNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=cqXIjEGwA7vOTFyc0y1gQlGZ8154/J+WgWhAVgjYKBE=;
	b=NvcsEU/fHPVnltlodKvUyo4WReR9MUVpy4kIBKcp8NjDd95QHZ98a99bh80bDBhLd1
	z5V6P0FE0QfBIFqStsITNxW4SAkKySAP/aaxHlQaJVfzC4ayVKU5ow4Rd/1qi49YVRmY
	sgzomk6IRUqGEYFrm1EBJOHCOo81vmGXbDCiLi4qgQtskRuq7HWfzmDVDKBhHPlkJUec
	pR3LmBq0fgBOHf2Fz6XIl+Q1IlGvgiB8K69Ss9mGxEjq9gI7pj5OSFqvYdvzCfWVN0Nn
	/HuYW4S6KNkEoh+FcmQa3h9vHeo52bgs6NHok5Wtt4bbN3FYtJH0kglGh35G7GuRdTJj
	Fuqw==
X-Gm-Message-State: APjAAAUcxCAKt/wQKxrKYMVlHI74jc+IhWbBYoaZtAyYWAPYNnQrroQp
	sMKodxP2Xql8BY/PgWhOq4ONdpdo
X-Google-Smtp-Source: APXvYqxHI1NU3h3BA1gU5Am8kNpk7JpdgKVs2ySTHnWQizWOW8jCN8F9HK7EeJkHgF1XlFDgdLn3Eg==
X-Received: by 2002:a25:318a:: with SMTP id
	x132mr13355521ybx.276.1566824519580; 
	Mon, 26 Aug 2019 06:01:59 -0700 (PDT)
Received: from xu4.kyle.tk (cpe-2606-A000-111A-8591-0-0-0-F17.dyn6.twc.com.
	[2606:a000:111a:8591::f17]) by smtp.googlemail.com with ESMTPSA id
	a70sm2411326ywa.79.2019.08.26.06.01.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 26 Aug 2019 06:01:58 -0700 (PDT)
Subject: Re: amazon?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
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
	<CAO2sX33WwZ55ekxV=a1aggdbRDNTDYxGx-z=dWhw=1743yX1jg@mail.gmail.com>
	<Pine.LNX.4.64.1908260053130.16691@server2.shellworld.net>
	<CAO2sX3352S6RrOXjDEqZBC6X=_c6zzcSN_61QKcAaG_wRX3r_A@mail.gmail.com>
	<Pine.LNX.4.64.1908260757270.23329@server2.shellworld.net>
Message-ID: <f4ac871f-36c4-259f-c571-af1ce6a109c7@gmail.com>
Date: Mon, 26 Aug 2019 09:01:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.1908260757270.23329@server2.shellworld.net>
Content-Language: en-US-large
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.69]);
	Mon, 26 Aug 2019 13:02:01 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]);
	Mon, 26 Aug 2019 13:02:01 +0000 (UTC) for IP:'209.85.219.174'
	DOMAIN:'mail-yb1-f174.google.com'
	HELO:'mail-yb1-f174.google.com' FROM:'kyle4jesus@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.219.174 mail-yb1-f174.google.com 209.85.219.174
	mail-yb1-f174.google.com <kyle4jesus@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.69
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 26 Aug 2019 13:02:14 +0000 (UTC)

TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhbGlhbmRpa2E6Cj4gdGhlIG1vc3Qg
eW91IGNhbiBkbyBhcyBhbiBpbmRpdmlkdWFsIGlzwqAgc3RhdGUgY2xlYXJseSB0aGF0IAo+IGFj
Y2Vzc2liaWxpdHkgaXMganVzdCB0aGF0LCBkZWZpbmVkIGJ5IGluZGl2aWR1YWxzLsKgIFlvdXIg
ZXhwZXJpZW5jZXMgCj4gYmVnaW4gYW5kIGVuZCB3aXRoIHlvdSwgYmVjYXVzZcKgIG5vIG9uZSBl
bWJvZGllc8KgIHRoZSBlbGVtZW50cyAKPiBjb21wcmlzaW5nIHlvdXIgYmxpbmRuZXNzIGV4cGVy
aWVuY2UgYnV0IHlvdXJzZWxmLgoKCkJ1dCB0aGVyZSBpcyBhIGh1Z2UgcHJvYmxlbSB3aXRoIHRo
aXMgYXJndW1lbnQsIGluIHRoYXQgaWYgYWNjZXNzaWJpbGl0eSAKaXMgb24gYW4gaW5kaXZpZHVh
bCBiYXNpcywgbm8gc3RhbmRhcmRzIG9yIGd1aWRlbGluZXMgY2FuIHdvcmsgYXQgYWxsIApiZWNh
dXNlIGJvdGggc3RhbmRhcmRzIGFuZCBndWlkZWxpbmVzIG11c3QgYnkgZGVmaW5pdGlvbiB0YWtl
IGEgb25lIHNpemUgCmZpdHMgbWFueSBhcHByb2FjaC4gSWYgd2ViIGRlc2lnbmVycyBtdXN0IHRh
a2UgaW50byBhY2NvdW50IGV2ZXJ5IHNpbmdsZSAKaW5kaXZpZHVhbCBpbiBvcmRlciB0byBtYWtl
IHRoZWlyIHNpdGVzIGFjY2Vzc2libGUgdG8gYWxsLCB0aGVuIHRoZXJlIApjYW4gYmUgbm8gdmlh
YmxlIGFjY2Vzc2liaWxpdHkgZ3VpZGVsaW5lcywgYmVjYXVzZSBvbmUgaW5kaXZpZHVhbCB3aWxs
IAphbHdheXMgZmluZCBhIHByb2JsZW0gc29tZXdoZXJlLiBVbmFuaW1vdXMgYWNjZXNzaWJpbGl0
eSBpcyBxdWl0ZSAKaW1wb3NzaWJsZSwgYmVjYXVzZSBldmVuIGxhcmdlIGdyb3VwcyBjYW4ndCBz
ZWVtIHRvIGFncmVlIG9uIHdoYXQgCmNvbnN0aXR1dGVzIGFjY2Vzc2liaWxpdHksIGV2ZW4gYW1v
bmcgcGVvcGxlIHdpdGggYSBzaW5nbGUgZGlzYWJpbGl0eS4KCkltZXR1bXdhIGt1dG9rYSBtdHUg
bXBvZnUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==
