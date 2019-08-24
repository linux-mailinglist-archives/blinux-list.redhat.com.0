Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA579BFE1
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 21:40:25 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 2A12359451;
	Sat, 24 Aug 2019 19:40:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD8BA19C6A;
	Sat, 24 Aug 2019 19:40:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 915872551C;
	Sat, 24 Aug 2019 19:40:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7OJeLOt012965 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 15:40:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9C18A4148; Sat, 24 Aug 2019 19:40:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx25.extmail.prod.ext.phx2.redhat.com
	[10.5.110.66])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96FF45DD63
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 19:40:19 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 8859210F23E4
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 19:40:17 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id w4so11742796ote.11
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 12:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=BTiT0zumdd2Dc0dMVAJnvtBhR8GnZaVbQrclfAnaCxk=;
	b=RAUm2Xmj5SYlH/w4D3bLF2IIrc6XdWbOKPK8Il8a6IeplWvmU48VB0Nzz0VzugEkJA
	i6hyx8GpYcAeby+nc6tkAHXMIYiq1PrvFfRJBHhQy5wkV+hoFjBPgfLFSv/XthoQZ/TC
	H995Aw9lP9k3cVxFPgyw6EjVrHXfcL0vprMxxCObCxweaLnYAX6A772VMpDMDHUoIQlK
	41/D3yXqeJBNdcYQIXf/fc7n+A60HmcGtL5AHF1JxwNhsq92wPeJacxqFnZM0UbuiEwJ
	5GLjzxtHsCA2ytc7P9DTXEePIsmXfEQnIgeasHRKyHCSJadSFdMitMylUiMbvjWSWQ1+
	H6oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=BTiT0zumdd2Dc0dMVAJnvtBhR8GnZaVbQrclfAnaCxk=;
	b=h2vCAKk7zeJL/RoQluQ+3zdgmF4M2FZ0NLeAdR3z1pnrnBfIBNORZ7m8WPEfYbYW9M
	g8ZQ8VRR4zYu6Ygv+23AXv6RRWmOjIMOZy0BRpC6itsDXamPr71v5kPk3b2dtvR1ccSe
	vpmyEp6h1Z8VBwMHB1F0CQVNIAWzgrk0AFgwyJvLz5FyH9XojfF21PogMWN/BKN0Y4Sb
	vgICC9qULiwg46Lo5nGc8sCnCYeuGiMqzmPniVe7WgYnwyCSkP5KfH7dfc+V0LTtbLh0
	ItMs2ufAxVmZ2hYaqJK/qjE1jKObkxyENBkH9evZIFY3TMoD2OEYQBXXZdgk3FA/wCFK
	JK3A==
X-Gm-Message-State: APjAAAWyXgEQgbU1bi5LNW64wwJ0J+T+eHpwei/ES/yVMiXRBFEwo+Uf
	YhdUnUsTe85CWtEgYL5w0T6hSxEa
X-Google-Smtp-Source: APXvYqyK439z+wBmrOwI3VMxr9kmRqbDzsSWPVL9VnKgQK16eXzCG7hy604Cu1SpvuhrmSxwNEAfLA==
X-Received: by 2002:a05:6830:1e05:: with SMTP id
	s5mr8711287otr.247.1566675616804; 
	Sat, 24 Aug 2019 12:40:16 -0700 (PDT)
Received: from [192.168.1.11] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49])
	by smtp.gmail.com with ESMTPSA id r8sm2193432oti.76.2019.08.24.12.40.16
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 12:40:16 -0700 (PDT)
Subject: Re: amazon?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<A4215BB2-6107-4752-AC5F-679E449FC076@gmail.com>
	<Pine.LNX.4.64.1908231729330.11612@server2.shellworld.net>
	<Pine.LNX.4.64.1908241516100.31524@server2.shellworld.net>
Message-ID: <1ac5ac49-c976-2d87-105b-9988c74dd17c@gmail.com>
Date: Sat, 24 Aug 2019 14:40:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.1908241516100.31524@server2.shellworld.net>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.66]);
	Sat, 24 Aug 2019 19:40:17 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.66]);
	Sat, 24 Aug 2019 19:40:17 +0000 (UTC) for IP:'209.85.210.48'
	DOMAIN:'mail-ot1-f48.google.com' HELO:'mail-ot1-f48.google.com'
	FROM:'chaltain@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.48 mail-ot1-f48.google.com 209.85.210.48
	mail-ot1-f48.google.com <chaltain@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.66
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Sat, 24 Aug 2019 19:40:24 +0000 (UTC)

QW1hem9uIGhhcyBtb3JlIHRoZW4gb25lIGJsaW5kIGVtcGxveWVlLgoKCk9uIDgvMjQvMTkgMjoy
MyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBBbWF6b24g
Y2Fubm90wqAgZnJvbSBhbiBhY2Nlc3Mgc3RhbmRwb2ludCAqZm9yY2UqwqAgYW55b25lIHRvIAo+
IGFjY29tbW9kYXRlIHRoZWlywqAgYm9keSBhcyBBbWF6b27CoCBzZWVzIGZpdC7CoCBJIHN1c3Bl
Y3QgaW5zdGVhZCB0aGV5IAo+IGhhdmUgYSB0b2tpbmcgYmxpbmQgcGVyc29uIGFuZCBoYXZlIGRl
Y2lkZWQgdG8gcHJvamVjdMKgIHRoYXQgCj4gaW5kaXZpZHVhbCBvbnRvIG90aGVycywgZXZlbiB0
aG9zZcKgIHVzaW5nIHRoaW5ncyBsaWtlIHZvaWNlIGJyb3dzZXJzwqAgCj4gZHVlIHRvIGRleHRl
cml0eSBjaGFsbGVuZ2VzIC4uYXMgaWYgYmxpbmRuZXNzIGlzIHRoZSBvbmx5IGRpc2FiaWxpdHkg
Cj4gaW4gZXhpc3RlbmNlLsKgIFdoYXQgaXMgZXF1YWxseSBkaXN0dXJiaW5nIGlzIGhvdyBjdXN0
b21lciBzZXJ2aWNlIAo+IGNhbm5vdCBkaXJlY3RseSByZWFjaCBpbmRpdmlkdWFsc8KgIG9uIHRo
ZSBhY2Nlc3NpYmlsaXR5wqAgdGVhbSwgCj4gYXNzdW1pbmcgdGhlcmUgaXMgbW9yZSB0aGFuIG9u
ZSBwZXJzb24uCj4gVXNpbmcgaW1hZ2UgYmFzZWQgdmVyaWZpY2F0aW9uIGhhdmUgYmVlbiBjb25z
aWRlcmVkIHBvb3IgZnJvbSBhIHczYyAKPiBwZXJzcGVjdGl2ZcKgIGZvciBtYW55IHllYXJzLsKg
IFdoeSBhbWF6b24gc3RpbGwgdXNlcyB0aGVtIGlzIGFueW9uZSdzIAo+IGd1ZXNzLgo+Cj4KPgo+
IE9uIEZyaSwgMjMgQXVnIDIwMTksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4KPj4gV2VsbCwgYXJlIHlvdSBpbXBseWluZyBJIHNob3VsZCBiZSBmb3JjZWQgdG8g
cnVuIGEgZ3JhcGhpY2FsIAo+PiBzY3JlZW4tcmVhZGVyIHN1Y2ggYXMgT3JjYSwgc28gSSBjYW4g
c2hvcCBhdCBBbWF6b24/IEkgc3VwcG9zZSBpZiAKPj4gdGhlcmUgd2VyZSBzb21ldGhpbmcgbXVj
aCBiZXR0ZXIgdGhhbiBPcmNhLCBJIHdvdWxkIGNlcnRhaW5seSB0cnkgaXQgCj4+IG91dC4gTXkg
V2lmZSB3YW50cyBtZSB0byB0cnktYW5kLXNob3AgYXQgQW1hem9uIGZyb20gYSBDaHJvbWUgQm9v
ay4gSSAKPj4gd2lsbCBleHBlcmltZW50Lgo+PiBDaGltZQo+Pgo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAoKLS0gCkNocmlzdG9waGVyIChDSikKQ2hhbHRhaW4gYXQgR21h
aWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==
