Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBBA62F01
	for <lists+blinux-list@lfdr.de>; Tue,  9 Jul 2019 05:39:34 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 059C5308A98C;
	Tue,  9 Jul 2019 03:39:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4962118A56;
	Tue,  9 Jul 2019 03:39:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B4EEE206D2;
	Tue,  9 Jul 2019 03:39:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x693dNgL018234 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Jul 2019 23:39:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A85602B05E; Tue,  9 Jul 2019 03:39:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx13.extmail.prod.ext.phx2.redhat.com
	[10.5.110.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2D105C2E1
	for <blinux-list@redhat.com>; Tue,  9 Jul 2019 03:39:21 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 802973086211
	for <blinux-list@redhat.com>; Tue,  9 Jul 2019 03:39:20 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id x15so1497187wmj.3
	for <blinux-list@redhat.com>; Mon, 08 Jul 2019 20:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=AreFBtx6Ew0szgQ9VE74EEwEEVQD/vRnHfLo3+vgT/s=;
	b=ck+B4DXaNxcaQ1dOWRLeEH8eUReeu3L7XNEiO+1LKDHQnVywdtZjVdv+pXHMMPysZk
	3dcUxrEmyu6oFCgNY5YyFo+z1jth603s6kXL7XJIk4SQSl2r+15LKxLu49ieSh84dNMs
	9NWib+l9cGGPNr70shIUiZCs4ER2BhOIMDvqG3OV67i/en6KCB7AQRmsii8Hs3826YrK
	p9/8hjcXuPFfi6pnMsxgi65LXkjTU/oYwsoRsYTVD+mRcotOZhYjAUYWTEBoQ/ZiIMxI
	y8PeV050do/h3xW41HyuLjTWD+b00S1LN5a6bHbyV6rKZDvz1XoWA3/p4EhaKcQdELs0
	ZzPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=AreFBtx6Ew0szgQ9VE74EEwEEVQD/vRnHfLo3+vgT/s=;
	b=XC5cE18x8qIo36EO6pwpzInraaGjX1Vc6x/55VtDDaS+u/ZGTjAfLz1cQa+HcbWg4c
	BR9G3vk6x7LvsR9uffoGdOh2uva+e/olD/FOktPSq46z5YIpgJo4ioI3nhHNwL/2l/bZ
	G9zYC0IAOKxzpNGXOUaoA4vClqL9VvDZscmB8vcg/jcVTXPWiPPQpL67hg9IADSpcyEy
	ejQIgm5IPoddiXdoebMFhPZJM3yJqhlF+hmvn5sR1nmnUj0gy7S0prfTpVUGV7NR7IEY
	FIVWOqFIy5zJ3Cj1kM7hn5uY7+EFFjf1Hrf2Gg1embrmhPF+J4CBAWe9CSW/1o0QsNX8
	SmhA==
X-Gm-Message-State: APjAAAXj+BTBvb1hEhGmfA6q1l8isSGB7lGhjcz1vlfnPdln7XNPhTfT
	/YOt5JaYf757bfacY3yxTx5krjKnIhOG/JwAZzlafvSL
X-Google-Smtp-Source: APXvYqwEPPwrHY1ojdiBvTHqJD+hKRywKpqt7GJohABfTN4VU1ccPt/4Si+Ab3v3sR+HTOvXzrc6hZDcy9QWhH5666Y=
X-Received: by 2002:a1c:343:: with SMTP id 64mr20316411wmd.116.1562643558932; 
	Mon, 08 Jul 2019 20:39:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAJKfDDF5PMXY6S6_r8zAAq3FmA-eGW2+o3B1xhKqZBKt=XmoLw@mail.gmail.com>
	<A8468674-D33F-4ACA-8B95-D4C59EC7D49A@gmail.com>
In-Reply-To: <A8468674-D33F-4ACA-8B95-D4C59EC7D49A@gmail.com>
Date: Mon, 8 Jul 2019 23:39:08 -0400
Message-ID: <CAJKfDDHqg_RL7pV-Xq+FD_B84toEiJt=2kd8uSK5OSV=_y4exQ@mail.gmail.com>
Subject: Re: humanware braillant 40
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.42]);
	Tue, 09 Jul 2019 03:39:20 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]);
	Tue, 09 Jul 2019 03:39:20 +0000 (UTC) for IP:'209.85.128.53'
	DOMAIN:'mail-wm1-f53.google.com' HELO:'mail-wm1-f53.google.com'
	FROM:'spikemcc@gmail.com' RCPT:''
X-RedHat-Spam-Score: 1.228 * (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, HTML_MESSAGE, PDS_NO_HELO_DNS, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.128.53 mail-wm1-f53.google.com 209.85.128.53
	mail-wm1-f53.google.com <spikemcc@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.42
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Tue, 09 Jul 2019 03:39:33 +0000 (UTC)

Q2Fu4oCZdCBzaW5jZSBJ4oCZbSBpbiB0aGUgZGFyayB3aXRoIHN1Y2ggYSBkZXZpY2UKCkxlIGx1
bi4gOCBqdWlsbC4gMjAxOSDDoCAyMDozOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8CmJsaW51eC1saXN0QHJlZGhhdC5jb20+IGEgw6ljcml0IDoKCj4gTW9yZSBpbmZvIG91
Z2h0IGJlIGhlbHBmdWwuICBJIGFtIHVzaW5nIGEgQnJhaWxsaWFudCBCSSA0MCB3aXRoIFVidW50
dQo+IDE4LjA0IEJybHR0eSA1LjUgd2l0aCBubyBpc3N1ZXMuCj4KPiBUb20KPgo+Cj4gU2VudCBm
cm9tIG15IGlQaG9uZQo+Cj4gPiBPbiBKdWwgOCwgMjAxOSwgYXQgMTc6MjksIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3Rl
Ogo+ID4KPiA+IEhlbGxvLAo+ID4KPiA+IGNhbid0IGdldCBpdCB0byB3b3JrIHdpdGggQnJsVFRZ
LCBhbnkgaWRlYSA/Cj4gPgo+ID4gLS0KPiA+IE1pY2hhw6tsIENhcm9uIENvdXR1cmllcgo+ID4K
PiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0
dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgotLSAKTWljaGHDq2wgQ2Fyb24g
Q291dHVyaWVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==
