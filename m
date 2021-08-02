Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1A7223DD3E3
	for <lists+blinux-list@lfdr.de>; Mon,  2 Aug 2021 12:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627900580;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wPkw5XYBG3wKA2+RKSlLLCfU/eVFCXy5yhC+bg+y95g=;
	b=TAXj/E8ToqGoQhwtItvNcsC8+5MWpH0y6iyyOGCkcc6qxbh1zMU5f8gaqBqgyrXJEjDIBM
	0Qp6TqkIn0mq3BEAfUFN0cTYHN3O1Z5qbm6pEaN0SwvhjWxV6mZHjvRbZISEAJKQwS9JQL
	igh82VspCy1kwR/7240HxAZxqXsp43c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-387-V0mHME6qOqSwHopBpTwwkQ-1; Mon, 02 Aug 2021 06:36:18 -0400
X-MC-Unique: V0mHME6qOqSwHopBpTwwkQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BCF6F107465F;
	Mon,  2 Aug 2021 10:36:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 959FD5D9D3;
	Mon,  2 Aug 2021 10:36:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5DC3F4BB7B;
	Mon,  2 Aug 2021 10:36:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 172Aa2FA010650 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Aug 2021 06:36:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2C2DA216029B; Mon,  2 Aug 2021 10:36:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 274532160299
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 10:35:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 968C81066559
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 10:35:59 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-398-FOzDVOPNPEu7hboRBtfSvQ-1; Mon, 02 Aug 2021 06:35:56 -0400
X-MC-Unique: FOzDVOPNPEu7hboRBtfSvQ-1
Received: by mail-ed1-f53.google.com with SMTP id y7so21551624eda.5
	for <blinux-list@redhat.com>; Mon, 02 Aug 2021 03:35:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=MBMn465Hmo2N5dd2soQo+OmLfWMqwlF0ObMLFquLELo=;
	b=if3BBB8KOUe7UeTyzwhNI7KjMcJ1VFM/Gi2k+JXrYm6zNl8qPxVz0BTw/WZDSgtyqv
	DcqeKol9gQtHdDsPfkWqrDlnFWtWTJhQIjWw6rTiQRGlyMx+ab4kA15h6Zb24N2daW7c
	+ujYC01dLMwc5o7c1/CO40PWRJxCa/RbCspE39kk6KPGhJVQfmClVO4/3q6oCd7T0qYj
	Q/3tpAHpUiRQvKZJvrH1ODcSM4iowTtu0FltuBG/EFf/6jsY9biMPF2xHxU2AaaQkOFY
	XYf9xoLhRp+QSS27Qh/BJAD7l7vpYaRab6Vh+CpNlraU5Mt0grqtzWO25lnri9qMnlzL
	loCA==
X-Gm-Message-State: AOAM533D/790AujQwpe7ai67OJ06jyGLE9Ds5QF073j4AusnYFpJBb7m
	pUX95BZjsvjWJ/7JSUdeJIo6P6z21so=
X-Google-Smtp-Source: ABdhPJy0rmvol6gaKklrJZv6buj4HGHZbTApON3AFBwfrkpRbfnI+n+GPtOPvAqft2U+ECkG9cV0zA==
X-Received: by 2002:a05:6402:cab:: with SMTP id
	cn11mr18276034edb.369.1627900555506; 
	Mon, 02 Aug 2021 03:35:55 -0700 (PDT)
Received: from smtpclient.apple ([197.185.110.57])
	by smtp.gmail.com with ESMTPSA id
	p23sm5777605edt.71.2021.08.02.03.35.54 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Aug 2021 03:35:55 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Installing the Orolux IBMTTS version of Eloquence on Slint?
Date: Mon, 2 Aug 2021 12:35:51 +0200
References: <e1e89997-d831-ff6d-0b95-3a92f611e099@gmail.com>
	<87zgu0xop6.fsf@brainpower.wer>
	<0a9f8d88-9149-cb20-a3bb-82cf860cbee0@gmail.com>
	<e7299b99-0dbc-32be-7425-73ff8dacd166@slint.fr>
To: blinux-list@redhat.com
In-Reply-To: <e7299b99-0dbc-32be-7425-73ff8dacd166@slint.fr>
Message-Id: <AA8158C9-5C0A-45E6-9A77-E41B66E54DCE@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGlkaWVyLAoKT2sgdGhlbiwgbXkgZmF1bHQuIEkgaGF2ZSBhbiBvbGRlciB2ZXJzaW9uIG9m
IHRoZSBzb2Z0d2FyZSwgUkM0IHRvIGJlIGV4YWN0LiBIb3dldmVyLCBpbnRlcmVzdGluZ2x5IGVu
b3VnaCwgYWZ0ZXIgaW5zdGFsbGluZyB0aGUgdGhpbmcsIEkgZm91bmQgaXQgZG9lcyB3b3JrIHdp
dGggT3JjYS4gSSBhbSBqdXN0IG5vdyB0cnlpbmcgdG8gZmlndXJlIG91dCBob3cgdG8gbWFrZSBp
dCB3b3JrIHdpdGggc3BlZWNoZC11cC4gSWYgSSBjYW5ub3QsIGl0J3Mgbm90IHRoZSBlbmQgb2Yg
dGhlIHdvcmxkLgoKV2FybSByZWdhcmRzLAoKQnJhbmR0IFN0ZWVua2FtcAoKU2VudCBmcm9tIG15
IE1hY0Jvb2sgQWlyCgpDb250YWN0OgoKUGhvbmU6ICsyNyAoMCk2MCA1MjUgOTE4MSA8dGVsOi8v
KzI3NjA1MjU5MTgxPgoKRW1haWw6IGJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tIDxtYWlsdG86
YnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5jb20+CgpUd2l0dGVyOiBAYnJhbmR0c3RlZW5rYW1wIDxo
dHRwOi8vd3d3LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KCgoKCj4gT24gMDIgQXVnIDIw
MjEsIGF0IDEyOjMwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBIaSBCcmFuZHQsCj4gCj4gZWl0aGVyIHNwZWVj
aC1kaXNwYXRjaGVyIG9yIHRoZSB2b3hpbiBpbnN0YWxsZXIgaXMgbm90IHVwIHRvIGRhdGUuCj4g
Cj4gVGhlIG91dHB1dCBvZiA6Cj4gbHMgL3Zhci9sb2cvcGFja2FnZXMvc3BlZWNoLWRpc3BhdGNo
ZXIqCj4gc2hvdWxkIGJlOgo+IC92YXIvbG9nL3BhY2thZ2VzL3NwZWVjaC1kaXNwYXRjaGVyLWdp
dDI0NjgzOWRlLXg4Nl82NC0xc2xpbnQKPiAKPiBJZiBub3QsIHlvdSBuZWVkIHRvIGtlZXAgeW91
ciBzeXN0ZW0gdXAgdG8gZGF0ZS4KPiBBcyBhIHJlbWluZGVyIGZvciB3aG9ldmVyIGluIHRoZSBz
YW1lIHNpdHVhdGlvbiwgdHlwZSBhcyByb290Ogo+IHNsYXB0LWhldCAtdQo+IHNsYXB0LWdldCAt
LXVwZ3JhZGUKPiBzbGFwdC1nZXQtLWluc3RhbGwtc2V0IHNsaW50Cj4gCj4gSWYgeWVzLCBpbiBj
YXNlIHlvdXIgdm94aW4gdGFyYmFsbCBiZSBvbGQsIGRvd2xvYWQgdGhlIG1vc3QgcmVjZW50IG9u
ZQo+ICgzLjNyYzUgYXQgdGltZSBvZiB3cml0aW5nKQo+IFRJUDogeW91IGFsd2F5cyBjYW4gZ2V0
IHRoZSBjdXJybmV0IHZlcnNpb24gcmUtdXNpbmcgdGhlIHNhbWUgZG93bmxvYWQgbGluayhzKQo+
IHlvdSBnb3Qgd2hlbiAgYnV5aW5nIHRoZSB2b2ljZShzKQo+IAo+IFRoZW4gcnVuIHRoZSBpbnN0
YWxsZXIgYW5kIGp1c3QgcHJlc3MgRW50ZXIgdG8gYWdyZWUKPiBvbiBhbGwgdGhyZWUgcXVlc3Rp
b25zCj4gCj4gSWYgYWxsIHRoYXQgZmFpbHMsIHBsZWFzZSBnZXQgYmFjayB0byB1cy4KPiBEaWRp
ZXIKPiAtLQo+IERpZGllciBTcGFpZXIKPiBTbGludCBtYWludGFpbmVyCj4gCj4gCj4gTGUgMDIv
MDgvMjAyMSDDoCAxMTozMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOp
Y3JpdCA6Cj4+IEhpLAo+PiBJdCdzIHRlbGxpbmcgbWUsICJ5b3VyIHZlcnNpb24gb2Ygc3BlYWNo
ZGlzcGF0Y2hlciBoYXMgbm90IGJlZW4gcmVjb2duaXplZCIgd2h5IGl0J3MgZG9pbmcgdGhhdCwg
SSBoYXZlIG5vIGlkZWEuCj4+IFdhcm0gcmVnYXJkcywKPj4gQnJhbmR0IFN0ZWVua2FtcAo+PiBT
ZW50IHVzaW5nIFRodW5kZXJiaXJkIGZyb20gU2xpbnQKPj4gT24gOC8yLzIxIDk6NTggQU0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBIaSwKPj4+IAo+Pj4g
SSBzdWNjZXNzZnVsbHkgaW5zdGFsbGVkIFZveGluIG9uIG15IFNsaW50IG1hY2hpbmUuIEF0IHdo
YXQgcG9pbnQgYXJlCj4+PiB5b3UgaGF2aW5nICBwcm9ibGVtcz8KPj4+IAo+Pj4gV2hhdCBJIGRp
ZCB3YXMgdG8KPj4+IDEuIFRhciB4eGZ6diB2b3hpbi0zLjAudGFyLmd6Cj4+PiAyLiBDaGFuZ2Ug
dG8gdGhlIGZvbGRlciB3aXRoIHRoZSB1bnppcHBlZCBmaWxlcyB3aXRoIGNkIHZveGluLTMuMC8K
Pj4+IDMuIENoYW5nZSB0byBydW4gYXMgcm9vdCB3aXRoIHN1IGFuZCBwcmVzcyBlbnRlci4KPj4+
IDQuIEFzIHJvb3QsIHJ1biB0aGUgaW5zdGFsbCBzY3JpcHQsIC4vaW5zdGxsLnNoIGFuZCB5b3Ug
YXJlIGRvbmUuCj4+PiAKPj4+IEdvb2QgbHVjaywKPj4+IAo+Pj4gCj4+PiAKPj4+IAo+Pj4gTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JpdGVzOgo+Pj4+IEhpIGFsbCwKPj4+PiAKPj4+PiAKPj4+PiBPaywgdGhpcyBvbmUgaGFzIGJl
ZW4gZHJpdmluZyBtZSBjcmF6eS4gSSBoYXZlIHN1Y2Nlc3NmdWxseSBpbnN0YWxsZWQKPj4+PiBl
bG9xdWVuY2Ugb24gcHVyZSBBcmNoLCBNYW5qYXJvLCBGZWRvcmEsIERlYmlhbiwgVWJ1bnR1IGFu
ZCBNaW50LiBJIGp1c3QKPj4+PiBjYW5ub3QgZ2V0IHRoZSBkYW1uIHRoaW5nIHRvIGluc3RhbGwg
b24gbXkgU2xpbnQgc3lzdGVtLgo+Pj4+IAo+Pj4+IAo+Pj4+IElmIGFueW9uZSBjYW4gaGVscCwg
SSB3b3VsZCBiZSByZWFsbHkgZ3JhdGVmdWwuCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

