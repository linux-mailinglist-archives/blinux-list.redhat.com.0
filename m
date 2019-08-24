Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C239BFED
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 21:53:52 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6388585538;
	Sat, 24 Aug 2019 19:53:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 20ACA60BF1;
	Sat, 24 Aug 2019 19:53:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A3B811802218;
	Sat, 24 Aug 2019 19:53:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7OJrgG9013164 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 15:53:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7787310016EA; Sat, 24 Aug 2019 19:53:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx12.extmail.prod.ext.phx2.redhat.com
	[10.5.110.41])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71A9110013D9
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 19:53:40 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6B7FE308A9E0
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 19:53:39 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id y8so9443178oih.10
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 12:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=Abn3FaNkDGaL3yncXUFiFZYSvJCHXgnL2Z7h9t/rVoI=;
	b=YE6vIbEu6WmGzap+E4e3ewka84fbgm/igd0iFqnD/R6+h3YY1rgdxHisUrwparHA9p
	JUu18HgsAcVilvNE5fFMlgwLE1N/iulyluNYGRczPm9fttm1nd9/bdhjNUundYRjDVQN
	LjGYJw6tsyi+03knw5U+RHv0ALBqXacS0GufZG3+NCQvqO0Sz2uAQRtdKpiar/+IFNaT
	4Otbo5aPyhpETHzBVF0Lxss4qFj1IeQ0YBhbjCaVhTXgvy6dgFHiaOZHagWx/BZPHZtc
	NGU0rOaP944XG+k22X9Qv7vXc4gsNEZJ8rrMnJLp5SePaGqMkUZ049z8sCzbYDFs4mxT
	LaSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Abn3FaNkDGaL3yncXUFiFZYSvJCHXgnL2Z7h9t/rVoI=;
	b=Ysn7CxZXoZ6T9+iy1P+pqIHD02AihshB6a3hyftvuE118grfIzq5mD3oaUQ592kOyW
	N7NwJc9A5eaaNnhNdxew9gznP8P+xI/qvGLUSHpHAYrOobzyGyU4JFsWSWOquLVyFg53
	1SDH8hiUZ6UgX/4hg2Y5lq0Dwq/7mWzCZ9yhOKJrnmnGsRnySrhjNbhGqx1UYwlzDMFv
	uqKEMTL1FeV0SnYSiAOR72TF2dT/rP3quPoI/f44rCt83gesk/C9x4c4fAsSEeQmirYk
	HBnxLSJmeNWlwie5H0sY69ugEZi0dlnA/dRAk7k91QCPZB83jkG985g0sq21lEPv6rnf
	bB5w==
X-Gm-Message-State: APjAAAVdtbpgjSnpLWNjJ1u+rzlPNYcK4ckMJx3bq23xeEkYxITQiS1o
	AQWACHo8FoRskLZDlkKOQEP2+fHE
X-Google-Smtp-Source: APXvYqxVkdmA+U9UXuBvOmYl5HL/XuaFPOnH+laPEgheIjwkbmO6rHrf86CUFSBlYJxBBYb5fEplgg==
X-Received: by 2002:aca:dbc3:: with SMTP id s186mr7601466oig.179.1566676418522;
	Sat, 24 Aug 2019 12:53:38 -0700 (PDT)
Received: from [192.168.1.11] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49]) by smtp.gmail.com with ESMTPSA id
	s193sm1960705oih.55.2019.08.24.12.53.38 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 12:53:38 -0700 (PDT)
Subject: Re: amazon?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<A4215BB2-6107-4752-AC5F-679E449FC076@gmail.com>
	<Pine.LNX.4.64.1908241501480.31524@server2.shellworld.net>
Message-ID: <251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
Date: Sat, 24 Aug 2019 14:53:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.1908241501480.31524@server2.shellworld.net>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.41]);
	Sat, 24 Aug 2019 19:53:39 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]);
	Sat, 24 Aug 2019 19:53:39 +0000 (UTC) for IP:'209.85.167.177'
	DOMAIN:'mail-oi1-f177.google.com'
	HELO:'mail-oi1-f177.google.com' FROM:'chaltain@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.177 mail-oi1-f177.google.com 209.85.167.177
	mail-oi1-f177.google.com <chaltain@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.41
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Sat, 24 Aug 2019 19:53:50 +0000 (UTC)

QW1hem9uIGlzIGRlZmluaXRlbHkgYXdhcmUgb2YgTGludXguIFRoZXkgaGF2ZSBhcHBzIHJ1bm5p
bmcgb24gQW5kcm9pZCAKYW5kIGV2ZW4gcGxhdGZvcm1zIHRoYXQgdXNlIEFuZHJvaWQgYXMgdGhl
aXIgT1MuIFRoZXkgc3VwcG9ydCBMaW51eCBpbiAKQVdTIGluY2x1ZGluZyB0aGVpciBvd24gZmxh
dm9yIG9mIExpbnV4LiBJJ20gc3VyZSB0aGVpciBhcmUgc29tZSBzdGFmZiAKYXQgQW1hem9uIHdo
byBkb24ndCBrbm93IGFib3V0IExpbnV4LCBidXQgdGhhdCBkb2Vzbid0IG1lYW4gdGhlIGNvbXBh
bnkgCmlzIHVuYXdhcmUgb2Ygb3IgZG9lc24ndCBjYXJlIGFib3V0IExpbnV4LgoKCkJUVywgdGhl
cmUgaXMgc3RpbGwgYSBsZWdhbCBxdWVzdGlvbiBhcyB0byB3aGV0aGVyIGEgd2ViIHNpdGUgd2hp
Y2ggCm9mZmVycyBwcm9kdWN0cyBvciBzZXJ2aWNlcyB0byB0aGUgcHVibGljIG5lZWRzIHRvIGJl
IGFjY2Vzc2libGUuIFRoZSAKQURBIGRvZXNuJ3QgaGF2ZSBjb21wYW5pb24gZ3VpZGVsaW5lcyBv
biB3aGF0IGl0IG1lYW5zIGZvciBhIHNpdGUgdG8gYmUgCmFjY2Vzc2libGUgYW5kIERvbWlubydz
IGlzIGdvaW5nIHRvIGNvdXJ0IHRvIGNsYWltIHRoYXQgdGhlIEFEQSBkb2Vzbid0IApyZXF1aXJl
IHRoZW0gdG8gbWFrZSB0aGVpciBzaXRlIG9yIGFwcHMgYWNjZXNzaWJsZS4gSSB0aGluayB0aGUg
QURBIGRvZXMgCmFwcGx5IHRvIHB1YmxpYyB3ZWIgc2l0ZXMsIGFuZCBJIHRoaW5rIERvbWlubydz
IHdpbGwgbG9zZSwgYnV0IHRoYXQgCmRvZXNuJ3QgbWVhbiBpdCBpc24ndCBzdGlsbCBhbiBvcGVu
IGxlZ2FsIHF1ZXN0aW9uLgoKCgpPbiA4LzI0LzE5IDI6MTEgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gMS4gTXkgY29tbWVudCByZWdhcmRpbmcgTGludXgg
aXMgYmFzZWQgb24gZGlyZWN0IGNvbW11bmljYXRpb25zIHdpdGggCj4gQW1hem9uIHN0YWZmLMKg
IHdobyBoYXZlIGNvbmZlc3NlZCBub3QgdG8gaGF2ZSBoZWFyZCBvZiBpdCxhbmTCoCB3aG8gCj4g
aGF2ZSBubyBkaXJlY3QgY29udGFjdCB3aXRoIHRoZWlyIHNvIGNhbGxlZCBhY2Nlc3NpYmlsaXR5
IHRlYW0gd2hlbiAKPiBwcm9ibGVtcyBhcmlzZS4KPiAyLiB0aGVtIHByb3Blcmx5IGNvbXBpbGVk
wqAgZWxpbmtzIGFuZCBsaW5rcyBmdW5jdGlvbiB3aXRoIGphdmEgc2NyaXB0Lgo+IDMuwqAgQWNj
ZXNzIGlzIHRpZWQgdG8gaW50ZXJhY3Rpb24gd2hpY2ggaXMgd2h5IGV2ZW4gbGF0ZXIgZWRpdGlv
bnMgb2YgCj4gbHlueCBjYW4gbWFuYWdlIHNvbWUgc2NyaXB0aW5nLCBzdWJtaXQgYnV0dG9ucyBm
b3IgZXhhbXBsZS4KPgo+IDQuIHNpbmNlIGFkYXB0aXZlIHRlY2hub2xvZ3kgaXMgb2Z0ZW4gYSBz
dWJzdGl0dXRpb24gZm9yIHRoZSBwZXJzb25zIAo+IGV5ZXMsIGhhbmRzLCBicmFpbiwgYW5kIHRo
ZSBsaWtlLCB3aGF0IGdpdmVzIHlvdSB0aGUgcmlnaHQgdG8gc3RhdGUgCj4gdGhhdCB0ZWNobm9s
b2d5IGNob2ljZXMgYXJlIG5vdCB0aWVkIHRvIHBoeXNpY2FsIG1hbmRhdGVzP8KgIEhvdyBkb2Vz
IAo+IHlvdXIgc3RhbmNlIGRpZmZlciBmcm9tIHRob3NlIHdobyBjbGFpbSB0aGF0IGFjY2VzcyBu
ZWVkIG5vdCBleGlzdCBhdCAKPiBhbGwswqAgb3IgdGhhdCBhbGwgdGhvc2Ugc2hhcmluZ8KgIGEg
bGFiZWwgYXJlIHRoZSBzYW1lPwo+IDUuIHRoZSBuYW1lcyBvZiBhY2Nlc3Mgb3Igb3RoZXIgaW5k
aXZpZHVhbHMgYXQgYW1hem9uIGNvbmZpcm1pbmcgeW91ciAKPiBhc3N1bXB0aW9uIGhlcmU/wqAg
dGhlIGxlZ2FsIHN0YW5jZSBpcyB0aGF0IGlmIGEgc2l0ZSBzZXJ2ZXMgdGhlIAo+IHB1YmxpYywg
YW4gaW5kaXZpZHVhbCBjYW4gZXhwZWN0IGVxdWFsIHB1YmxpYyBhY2Nlc3MuLi53aGljaCBpcyB3
aHnCoCAKPiBhbHRlcm5hdGl2ZSBkb29yc8KgwqDCoCBhcmUgdG8gZXhpc3TCoCBpbiB0aGUgZmly
c3QgcGxhY2UuCj4gSG93IGRvIHlvdSBrbm93IHdoYXQgbG93IGdyYXBoaWNzIGNhbiBvciBjYW5u
b3QgZG8gaWYgeW91IGRvIG5vdCAKPiBmb2xsb3cgdGhlaXIgZGV2ZWxvcG1lbnQ/wqAgVGhpcyBp
cyBhYm91dCBrZXlib2FyZCByZXNwb25zZSB3aGljaCAKPiBleGlzdHMgaW4gZ3JhcGhpY2FswqAg
YnJvd3NlcnMgbGlrZSBlbGlua3MgYW5kIGxpbmtzLgo+Cj4KPgo+IE9uIEZyaSwgMjMgQXVnIDIw
MTksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gSSBkb24n
dCBiZWxpZXZlIGZvciBhIG1pbnV0ZSB0aGF0IHRoZSBhY2Nlc3NpYmlsaXR5IHN0YWZmIGF0IEFt
YXpvbiAKPj4gaGFzIGVpdGhlciBmb3Jnb3R0ZW4gb3Igc3RvcHBlZCBjYXJpbmcgYWJvdXQgTGlu
dXggYWNjZXNzaWJpbGl0eS4gCj4+IFJlYWxpc3RpY2FsbHkgdGhvdWdoLCBpdCBpcyBwb3NzaWJs
ZSB0aGF0IHRoZXkgaGF2ZSBzdG9wcGVkIHdvcnJ5aW5nIAo+PiBhYm91dCB0aGUgdmVyeSBzbWFs
bCBudW1iZXIgb2YgcGVvcGxlIHdobyBzdGlsbCB1c2UgdGV4dC1iYXNlZCAKPj4gYnJvd3NlcnMg
YW5kIGV4cGVjdCB0aGVtIHRvIHdvcmsgZm9yIHNob3BwaW5nLCBiYW5raW5nIGFuZCBvdGhlciAK
Pj4gbW9kZXJuIGludGVybmV0IHRhc2tzLiBUaGUgdGhpbmcgaXMgTGludXggYWNjZXNzaWJpbGl0
eSBpbiAyMDE5ICE9IAo+PiBseW54L2xpbmtzL2VsaW5rcyBhY2Nlc3NpYmlsaXR5LiBJbiBmYWN0
LCB0aGlzIGhhc24ndCBiZWVuIHRoZSBjYXNlIAo+PiBzaW5jZSBhYm91dCAyMDA4IG9yIHNvCj4+
IC4KPj4gVW5mb3J0dW5hdGVseSwgdGV4dC1iYXNlZCBicm93c2VycyBoYXZlIG5vdCBrZXB0IHVw
IHdpdGggdGhlIHJlc3Qgb2YgCj4+IHRoZSBpbnRlcm5ldCwgYW5kIGNhbid0IGJlIGV4cGVjdGVk
IHRvIHdvcmsgd2VsbCBmb3IgbW9zdCB3ZWJzaXRlcyAKPj4gd2l0aG91dCBhIG1ham9yIG92ZXJo
YXVsLCBlc3BlY2lhbGx5IHNpbmNlIHRoZXkgZG9uJ3QgZXZlbiBzdXBwb3J0IAo+PiB0aGUgbGF0
ZXN0IEhUTUw1IHN0YW5kYXJkcywgbm9yIGRvIHRoZXkgc3VwcG9ydCBhY2Nlc3NpYmlsaXR5IAo+
PiBzdGFuZGFyZHMgdGhhdCBoYXZlIGJlZW4gaW4gcGxhY2UgZm9yIHllYXJzLiBFdmVuIHczbSBk
b2Vzbid0IGZ1bGx5IAo+PiBzdXBwb3J0IHRoZSB3M2MncyBvd24gc3RhbmRhcmRzLgo+Pgo+PiBZ
ZXMsIEkgY2FuIHNlZSB3aHkgc29tZSBwZW9wbGUgbWF5IHdhbnQgdGhlc2UgbGlnaHQtd2VpZ2h0
IGFuZCBmYXN0IAo+PiBicm93c2VycyB0byB3b3JrIHdpdGggQW1hem9uLCBhbmQgeWVzLCB0aGV5
IHNob3VsZCBiZSBtYWRlIGF3YXJlIG9mIAo+PiB0aGUgcHJvYmxlbXMgdGhhdCBwZW9wbGUgYXJl
IGhhdmluZy4gQnV0IHRvIHNheSB0aGF0IEFtYXpvbiBkb2Vzbid0IAo+PiBjYXJlIGFib3V0IExp
bnV4IGFjY2Vzc2liaWxpdHkgYmVjYXVzZSB0aGVpciBzaXRlIGRvZXNuJ3Qgd29yayB3aXRoIGEg
Cj4+IHRleHQtYmFzZWQgYnJvd3NlciBpcyBhdCBiZXN0IGEgZ3Jvc3MgZXhhZ2VyYXRpb24sIGFu
ZCBpcyBhdCB3b3JzdCBhIAo+PiBncmF2ZSBkaXNzZXJ2aWNlIHRvIHRob3NlIG9mIHVzIHdobyB1
c2UgTGludXggYW5kIGEgc2NyZWVuIHJlYWRlciBhdCAKPj4gdGhlIHNhbWUgdGltZS4KPj4gSW1l
dHVtd2Ega3V0b2thIG1pdGkKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4+Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKCi0tIApDaHJpc3RvcGhlciAoQ0opCkNoYWx0YWluIGF0IEdtYWlsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=
