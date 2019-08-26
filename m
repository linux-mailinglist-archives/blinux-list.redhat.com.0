Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FA69C6D3
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 02:22:04 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 564ADC057E9A;
	Mon, 26 Aug 2019 00:22:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38A4660BE2;
	Mon, 26 Aug 2019 00:22:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0430E2551C;
	Mon, 26 Aug 2019 00:22:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q0M18T013840 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 20:22:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6A4A95C548; Mon, 26 Aug 2019 00:22:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx28.extmail.prod.ext.phx2.redhat.com
	[10.5.110.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 636DB5C207
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 00:21:59 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 545A288134D
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 00:21:58 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id k22so10841501oiw.11
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 17:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=EGYz/nKOYJjwCop3QBpDMB81KD6QSeD81+7cW94h3hs=;
	b=p1dgBmi2wKQM+t3YKzIE1PZJ2ITSqQqztsqoRIOll8GRfVIj2TJf7xwhjvdVbQ4QYl
	1fJLIHi9YWNzz19yPmBNAWQJuw9EHi4lsh2rbogedvoryhYCeEWnA7qibU2XfM2R4YMQ
	gxeAWCfQB76olEqxo+2m5TH8foJ1h6PPCyjJ6UB0UjDHduvLaxbmRTnHH4yyGUdhuhVN
	cblCvurbCdK7A6Xn6D5hfAhnSVFyxRriVvVlbvpNkH6GsAecH75f1UtLStr5KMpCQCWQ
	VLw+j+5CjPMQZPGY09mhZUtTol6kOVO/RDJiaWbFA0q9GRbha2xTcQqbsvX5HEAe5c+S
	BugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=EGYz/nKOYJjwCop3QBpDMB81KD6QSeD81+7cW94h3hs=;
	b=VlsORfMc6IIqFbZ/sk4CptSiH8bp7e01bm5AYc0Nh/e8jS+ChYzjSrcfYFuhqHtq/P
	1G6lLMybcj+HiPlHxjvRfmIV6voZ92gyJKI5wDwK9EYWq2xo1BswIF6/GPlcHGbrV5Rp
	5NwFhNdFlg6k3hH2Cd6RejB5G4SnaN8J+z2S4MmtPGygmOX6Lw3CQvA4dhTVbEBLOeW8
	yXxfCreSJEkO34zzwHWqmRAx6UqqDN3HQa0TmU7Z3C8LlCXN7CcLO2AyGyxTMKdII+Gx
	GKKtDVeBDhX4b/4FXtvBdjQz7qMxA/bGqzgqRb1vR1kGP+J/p77eYCjQtYrKzhf3ZPnc
	IDdQ==
X-Gm-Message-State: APjAAAUO2B9h7Usc6YnqsN5VUQlRfHqXC0MyrKaCAxSwBIn7P5AHpprI
	5wSGKIIRXQq4Uqg5V6eWuoyccUwK
X-Google-Smtp-Source: APXvYqy5HtgiQwiQYIbmmMVwkIxiKULSz/sgFnhCvZSYkvifx3zCC3brUGtb7cM+jugVzHaLp5PTWg==
X-Received: by 2002:a54:4f8a:: with SMTP id g10mr10737216oiy.63.1566778917325; 
	Sun, 25 Aug 2019 17:21:57 -0700 (PDT)
Received: from [192.168.1.11] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49]) by smtp.gmail.com with ESMTPSA id
	t18sm3465867otk.73.2019.08.25.17.21.56 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Aug 2019 17:21:56 -0700 (PDT)
Subject: Re: amazon?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<Pine.LNX.4.64.1908241501480.31524@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
	<7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
	<Pine.LNX.4.64.1908250041020.12504@server2.shellworld.net>
	<6acc536b-99c9-21f7-1d40-be4d10abab70@GMAIL.COM>
	<Pine.LNX.4.64.1908251207060.2365@server2.shellworld.net>
	<a1ef7648-72f7-8fc7-e5b5-142187a91cc0@GMAIL.COM>
	<74ebe647-3c78-b87d-c7a3-aa65d2d688d1@gmail.com>
	<20190825.212134.847.19@[192.168.1.131]>
	<64b22aae-23e5-d645-eeb9-6c7646972090@gmail.com>
	<Pine.LNX.4.64.1908251929290.10144@server2.shellworld.net>
Message-ID: <6da21f36-3a43-60bf-3ef5-575597df144d@gmail.com>
Date: Sun, 25 Aug 2019 19:21:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.1908251929290.10144@server2.shellworld.net>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.69]);
	Mon, 26 Aug 2019 00:21:58 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]);
	Mon, 26 Aug 2019 00:21:58 +0000 (UTC) for IP:'209.85.167.176'
	DOMAIN:'mail-oi1-f176.google.com'
	HELO:'mail-oi1-f176.google.com' FROM:'chaltain@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.176 mail-oi1-f176.google.com 209.85.167.176
	mail-oi1-f176.google.com <chaltain@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.69
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 26 Aug 2019 00:22:03 +0000 (UTC)

SSBwb3N0ZWQgYSBsaW5rIHRvIHRoaXMgYXJ0aWNsZSBpbiByZXNwb25zZSB0byBhbm90aGVyIHBv
c3QsIGJ1dCBhIHdlYiAKc2VhcmNoIHdpbGwgcmVzdWx0IGluIGEgbG90IG9mIG90aGVyIGFydGlj
bGVzOiAKaHR0cHM6Ly93d3cudGhldmVyZ2UuY29tLzIwMTkvOC8xLzIwNzUwOTEzL2RvbWlub3Mt
cGl6emEtd2Vic2l0ZS1hY2Nlc3NpYmxlLWJsaW5kLXN1cHJlbWUtY291cnQtbGF3c3VpdAoKCkJU
VywgZG8geW91IG1lYW4gV0NBRyAyLjAgaW5zdGVhZCBvZiBXQUNHIDIuMD8gSSBqdXN0IHdhbnQg
dG8gbWFrZSBzdXJlIApJJ20gbm90IG1pc3Npbmcgc29tZXRoaW5nLiBJIGFsc28gZGlkIGp1c3Qg
cmVhbGl6ZSB0aGF0IEkgd2FzIG1pc3Rha2VubHkgCnJlZmVycmluZyB0byBpdCBhcyBXQ0FELCBz
byBzb3JyeSBmb3IgYW55IGNvbmZ1c2lvbi4KCgotLSAKQ2hyaXN0b3BoZXIgKENKKQpDaGFsdGFp
biBhdCBHbWFpbAoKCk9uIDgvMjUvMTkgNjozMiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPiByZWFsbHk/Cj4gQ2FuIHlvdSBkaXJlY3QgbWUgdG8gYW55IHBy
ZXNzIG9uIHRoaXM/wqAgd2h5IHRoZW0gYW5kIG5vdCBwaXp6YSBodXQgb3IgCj4gcGF5cGFswqAg
b3IgYW5vdGhlciBjb21wYW55P8KgIElzIHRoZSBhY2Nlc3Mgcm9vdGVkIGluIHdhY2cgMi4wPyBv
ciB0aGUgCj4gZmFywqAgbGVzcyBwcm9kdWN0aXZlIGZvY3VzIG9uIGEgc3BlY2lmaWMgYWNjZXNz
IHRvb2wsIGEgY29uY2VwdCB3aGljaCAKPiBpdHNlbGYgdmlvbGF0ZXMgd2FjZyAyLjA/Cj4KPgo+
IE9uIFN1biwgMjUgQXVnIDIwMTksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4KPj4gQW5kIHlldCBEb21pbm8ncyBpcyBiZWluZyBzdWVkIGJlY2F1c2UgdGhlaXIg
d2ViIHNpdGUgYW5kIGFwcCBpcyBub3QgCj4+IGFjY2Vzc2libGUuCj4+Cj4+Cj4+IEkgYWdyZWUg
d2l0aCB5b3UgYnV0IHRoYXQgZG9lc24ndCBtZWFuIGxhdyBzdWl0cyBzaG91bGQgbmV2ZXIgYmUg
ZmlsZWQuCj4+Cj4+Cj4+IC0tIAo+PiBDaHJpc3RvcGhlciAoQ0opCj4+IENoYWx0YWluIGF0IEdt
YWlsCj4+Cj4+Cj4+IE9uIDgvMjUvMTkgNDoyMSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPj4+IMKgVGhlIHByb2JsZW0gaXMgbW9zdCBvZiB1cyBkb24ndCBo
YXZlIG1vbmV5IHRvIGhpcmUgbGF3eWVycy4gWW91J2QgYmUKPj4+IMKgYW1hemVkIGhvdyBtYW55
IHBlb3BsZSBhcmUgc2NyZXdlZCBvdmVyLCBzaG92ZWQgYXNpZGUgYW5kIGlnbm9yZWQgCj4+PiBi
ZWNhdXNlCj4+PiDCoHRoZXkgbGFjayB0aGUgbW9uZXksIGNvbm5lY3Rpb25zIGFuZCBjbG91dCB0
byBkbyBhbnl0aGluZy4gQ29tcGFuaWVzCj4+PiDCoGFyZW4ndCBnb2luZyB0byBsaXN0ZW4gdG8g
YSBmZXcsIG9yIGV2ZW4gYSBmZXcgaHVuZHJlZCBjdXN0b21lcnMsIAo+Pj4gdW5sZXNzCj4+PiDC
oHRoZXJlJ3MgYSBjbGVhciBhZHZhbnRhZ2UgZm9yIHRoZW0uIFRoYXQncyB3aHkgYSBsb3Qgb2Yg
dGhlc2UgCj4+PiBjb21wbGFpbnRzCj4+PiDCoG5ldmVyIGdvIGFueXdoZXJlLgo+Pj4KPj4+IMKg
LS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLQo+Pj4gwqBGcm9tOiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+Pj4gwqBUbzogYmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gwqBEYXRlOiBTdW4sIDI1IEF1ZyAyMDE5IDE2OjE4OjM3
IC0wNTAwCj4+PiDCoFN1YmplY3Q6IFJlOiBhbWF6b24/Cj4+Pgo+Pj4gPsKgIEkgYWdyZWUgbGl0
aWdhdGlvbiBzaG91bGQgYmUgYSBmaW5hbCBzdGVwLCBidXQgdGhlcmUgYXJlIGFsc28gCj4+PiBj
ZXJ0YWluCj4+PiDCoHNlY3Rpb25zIG9mIHRoZSBibGluZG5lc3MgY29tbXVuaXR5IHdobyBkb24n
dCB0aGluayBsYXcgc3VpdHMgc2hvdWxkCj4+PiDCoGV2ZXIgYmUgdXNlZCwgYW5kIElNSE8sIHRo
aXMgaXMganVzdCBhbm90aGVyIGV4dHJlbWUgdGhhdCBzaG91bGQgYmUKPj4+IMKgYXZvaWRlZC4g
SWYgYSBjb21wYW55IGlzbid0IGZvbGxvd2luZyB0aGUgbGF3LCBhbmQgbm90aGluZyBlbHNlIGlz
Cj4+PiDCoHdvcmtpbmcsIHRoZW4gbGF3IHN1aXRzIGFyZSBhIHBlcmZlY3RseSByZWFzb25hYmxl
IHRvb2wuCj4+Pgo+Pj4KPj4+Cj4+PiDCoF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+PiDCoEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gwqBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+PiDCoGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pgo+PiAtLSAKPj4gQ2hyaXN0b3BoZXIgKENKKQo+PiBDaGFs
dGFpbiBhdCBHbWFpbAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4KPj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoK
LS0gCkNocmlzdG9waGVyIChDSikKQ2hhbHRhaW4gYXQgR21haWwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==
