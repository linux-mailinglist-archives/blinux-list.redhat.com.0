Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD5B4AFE9E
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 21:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644439112;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q0QsGyXap/VsL54qy4CmtRh643yL+5M5BdY1vvMNw9I=;
	b=IYhCgpYn3yXRTsCYmhKRfZuIgTLntobr6MEGdKrSZYOMUg0jyy9VRBTRI9Nm53iAE0uufb
	DgyVJvAw/9dEZ/dwDpqs1ZyYDRxY/XR8hk5S90Ah4WnzExHAhw4iQmTZDoRqSS3TDlEARB
	MXA73JXgpRdyoin1UKgB/qRpRg0p+xA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-671-718MQIcPNWq2h0RgSNqIeg-1; Wed, 09 Feb 2022 15:38:28 -0500
X-MC-Unique: 718MQIcPNWq2h0RgSNqIeg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C67E18519E1;
	Wed,  9 Feb 2022 20:38:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46DDA879E0;
	Wed,  9 Feb 2022 20:38:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 88D4F4BB7C;
	Wed,  9 Feb 2022 20:38:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219KZYCE006606 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 15:35:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6550E40885B2; Wed,  9 Feb 2022 20:35:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FF6D40885A0
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:35:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47F7085A5A8
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:35:34 +0000 (UTC)
Received: from sonic312-24.consmr.mail.gq1.yahoo.com
	(sonic312-24.consmr.mail.gq1.yahoo.com [98.137.69.205]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-658-j0YdgdUcMz-XE3IY2eaGAg-1; Wed, 09 Feb 2022 15:35:32 -0500
X-MC-Unique: j0YdgdUcMz-XE3IY2eaGAg-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1644438931; bh=VwWylMkpTIvdP8BlVxaL/w64MNSioAqbTvVKp4Dqn3G=;
	h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
	b=L6iV2H32d6vfB0ivPMzbJkwhh3OVEm7yLPbBwrFSTDuJOfiShsA0AMMm5GHi+S3L90TLHZc24H7M0BKGxAkK8m2g6diVnuzXELGZ48twJmc851KZ6DXFMdgbTrn1b9vv/i4gyLR4h+bGuRdFnW5OPHgtyASDXIP+TgYr2FjOoS5uWyfBnUXZA1PuySOzixtjZGvrZ0IswHWI6WUGbRyA0htHvbUkcxbli0BcC1dG3P01PKxlld9G4iSVp5t8YfZKAIZBRsOBHZqiAnwZBnLsnOhpFJhdUJ8Gq9MC5eHpRWq5qE2LNUegcCGzwo3wtzFNJNF3Ih3F+GzABkU/nh3sIQ==
X-YMail-OSG: cfxhsY4VM1mUmIRYPyeONO11N.L.YREFOwq.cnGk.UzFtJQ4jPL2eHwysuY3ufD
	ZzhqdiXsAWEH2dXQ.eiDrm5_mOlLgsiIL1FVUyL3z5P6XNBd1Z5XVIe7V0IninQ73nZcgHMy3N..
	u0kNkrCiZ_5qOeOrV2NVQaG6qJnSvaaOLkpYQzN4lctgCLtYlx8r__m.qnejokO34H1IZUBsnFX7
	vVlfIyndJl4fqA7xPPk1PZT_eGwwCUH4vNQyLnp0DRMckIP065szBhUQNbZanJeDOGxwJDm3S_08
	45S78AXJnElQ6Ihg2QwBBblIUKUc1fis1SPEBppxy8eOiHh76N.JRSMwikfD85rDdcakKgazD62w
	xuBKPSK7WZR.XgrxTHSwpFBF6YKCfuKgq1cZ0Q3g19UJwp8y5Ju6GRQeFBKzDNx1JYg6wYWnyMVD
	MxUGRPQRvUFWcsblcaey9pFKaeH7m9gDQcC.AlD2GxLIphv_VXTyHnvxKmigTG7KF6_huSvMDXPp
	f5Qk_1hY9Kpr0JV6MBdEfYZGJ5IwHZbEG0HSktXxJxvGTOYZICVD51cbXdn4PIBLtUdjzVlQRX7K
	_yfx0JAwMSFQWPqtcXYBohPKhigGHkjPX1CKeGHhOkkklan.IE77IQePCTz8.Sl7QnuONOASAEp4
	RRrPhUZSixJ_nBiSEWX.klDLBMCmLqpCXLDXndaZDhljScTmxkUvWaBLC.vDbHZIatxOyK0F6GxS
	aY6P7iNdwrPQvCTdb.qml4HlwpgBR2J.RPAyB_8hvJ.URUguINALRO0HmAoHpfEkuD3Y_ZBHb5sp
	f96iyigaKJOUFYFxCfvUb1OAoIHwK7jvb8feV1pMWFxqzbnp_M9nqPo2my4EmPaQmVwRlXnvKaHj
	ciCVtjg9U_XpyDQYFkUbdKaQWnViu.a1nFwkWxeyDEW0WT1doTY.4fOuUaeHWtvyjDl05T9u24vQ
	TbXCXmGSU_JgpfOkHid32GkCpo1gi90c2R2Hla6ndLlWMKq4aaatS1hcwo9izfaeZXAw9oTUeCXs
	6WxIxxYBN_0Ub1Kvp9R7SFKuUxe7b5pmaWyAFkH9fC4EtcUTOQ8VqK9TLWQmdpZXxtm_qO.fUdhk
	fueE31iIKFfLGqolHVpF5PenCLO.88wXOzobF_LizVJ8wZ3EsyT63V92.i.heLeBR2ZtKbkxk1Xu
	PkNwvRNBfyjKTjzuVM4t4nhbeK_cqslOgw6BDfApxPmRH.sbA3FGgAHST7Zjb3Fbmol89L0QT0xp
	nIgK2GwaAhXH6fdc0QepnyTr34Iig41RMavoGg2GSJafnFoitJOIFnjvXyyDe1IVq7MaqUdeDxCo
	jtvOAqqH_GcteRtlcc9kqbxCPozyOBBL4QbK9HtOGFDS9FRSYlq7KdseqxTaA2n8Fc4wNquaBguz
	1Mnn6LIhszDJkgzC9zS5N7_.BaLLU8FVDqWHdJBLXNr2Nr2uqrmd5cYwhKK8H_RmHjwY.Cv6AGUw
	41CvzsnwPEzY2SNSRFN0CTmathvKWSdo4OTSh9lGl0v6ydZy66jQAuTuZYcE964bktAeXh2dmGZJ
	jrLPnyt4Cte6e4N1..dCkMXIkg3FCsE7caN_GWDmvIKrcW2Q_1xdJpbhM3aoBotKNybVCf2sU27P
	osg8inNlvxeRHRuiL5PawaVtP_rX5OWo8LWxhsc7MmhMDymgXKUiB_gdtT18ZxdyijZVIq0AVEMO
	E7.in2KTl3ArZG8dJ8OH8laeMbuKjSYdKqa53ih75ztpo.4fZDQPO5TjoNunOj4pp1uF49F9FwPW
	qzGoPhFfsRNh8FG3GpOhFiDxEm2i5rhBjIj7YbBKs0ZvSN4Q2TkxQVRQoxklP1s6HkLVFdPMLkxQ
	sdRAKYyoqrT4YCiHt8zSrnW5horsoJ62LPVtaVcoC7bs7UOqc.LTmULORo5UoEQWKwzuwRhC9eE0
	TDY3V7V_BATZB.3WLvPLwSucHhQqUGBAiP3DAnePXp2EgsBUmXIxC4zo4jPuCRlz4jcqhs0u3wG.
	aSPyVs5lkpc3QDcbkV4Z.3IAI.J5JXJYQdcIIHA1z22g1rpAPVfENQLNDVM5L1wtxonh1GqdJ3X9
	n0tEWaZJ8A7Zqyh4InHM6MsQdpYWXdBHSkZcWzeDk.hG9S2NsxxOBJTqLx91vLLExAoBMl_xNb3X
	.aIoqLdOHTGieQkHhB4kC.N9XdMh0GV4Rt4Mq97iRaw2fMDXZ0kiR8O9kCqMwseaae.VbDsPCClo
	4mEW9jxq4UI00nV.UPH6WuYz7YYpvtsbzXz2j2wL2
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic312.consmr.mail.gq1.yahoo.com with HTTP;
	Wed, 9 Feb 2022 20:35:31 +0000
Received: by kubenode517.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID f7bbde605b7ba8a7ec40e7c2eae538c7; 
	Wed, 09 Feb 2022 20:35:29 +0000 (UTC)
Message-ID: <e208c967-78ea-2411-a469-c7f7bef13cb4@verizon.net>
Date: Wed, 9 Feb 2022 15:35:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: making right alt key usable (was)Re: De-arrowing my system...how easy
	it is?)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
	<20220208193544.19898f78@bigbox.attlocal.net>
In-Reply-To: <20220208193544.19898f78@bigbox.attlocal.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

R3JlZXRpbmdzIQoKClRoaXMgZGlzY3Vzc2lvbiBvZiBrZXlzIHByb21wdHMgbWUgdG8gYXNrIGhl
cmUgaG93IHRvIGdldCB0aGUgdXNlIG9mIG15IApyaWdodCBhbHQga2V5IGluIHRoZSBjb25zb2xl
LCBvciBlc3BlY2lhbGx5IHVzaW5nIEVtYWNzLsKgIEl0IHNlZW1zIHRvIG1lIApJIGRpZCB0aGlz
IHNvbWUgeWVhcnMgYWdvIG9uIGEgc3lzdGVtIHRoYXQgaGFzIGdvbmUgdG8gTGludXggSGVhdmVu
LCBidXQgCkkgY2FuJ3QgcmVtZW1iZXIgYW5kIGhhdmUgbm8gcmVjb3JkIG9mIGhvdyB0byBkbyB0
aGF0LsKgIEknZCBiZSBncmF0ZWZ1bCAKZm9yIGFueSBwb2ludGVycy4KCgpBbAoKCk9uIDIvOC8y
MiAyMDozNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBUaW0g
aGVyZS4gIEkgZG8ga25vdyB0aGF0IHNvbWUgYnJvd3NlcnMgaGF2ZSBhZGQtb25zIHlvdSBjYW4g
aW5zdGFsbAo+IGxpa2UgdmltaXVtIG9yIHRyaWRhY3R5bCBmb3IgRmlyZWZveCB0aGF0IHByb3Zp
ZGUgdmktbGlrZQo+IGtleWJpbmRpbmdzLgo+Cj4gSG93ZXZlciwgSSdtIHVuYXdhcmUgb2YgYW55
IHN5c3RlbS13aWRlIHNvbHV0aW9uIGFuZCBzdXNwZWN0IGl0IHdvdWxkCj4gYmUgYSBiaXQgdGVk
aW91cy4gIEknZCBhdm9pZCB1c2luZyBjb250cm9sLCBzaGlmdCwgb3IgYWx0IGluIGFueQo+IHBl
cm11dGF0aW9uIHdpdGggYSBsZXR0ZXIgdG8gZ2V0IHRoZSBhcnJvdy1rZXlzIGJlY2F1c2UgbG90
cyBvZgo+IGFwcGxpY2F0aW9ucyB1c2UgYWx0K2xldHRlciwgY29udHJvbCtsZXR0ZXIsIHNoaWZ0
K2xldHRlciwgb3IKPiBjb250cm9sK3NoaWZ0K2xldHRlci9hbHQrc2hpZnQrbGV0dGVyL2NvbnRy
b2wrYWx0K2xldHRlci4gIFNvIGlmIEkKPiBoYWQgdGhlIGRlc2lyZSB0byB0cnkgdGhpcywgSSdk
IHN1Z2dlc3QgdXNpbmcgeW91ciBNb2Q0IChhbHNvIGtub3duCj4gYXMgdGhlIFdpbmRvd3MgTG9n
byBrZXksIHRoZSBTdXBlciBrZXksIGV0Yykgc2luY2UgbW9zdCBhcHBsaWNhdGlvbnMKPiBkb24n
dCB1c2UgdGhpcyBrZXkuICBKdXN0IGFib3V0IGFsbCBvZiBteSB3aW5kb3ctbWFuYWdlciBrZXkt
YmluZGluZ3MKPiBhcmUgdGllZCB0byB0aGlzIG1vZGlmaWVyIGtleS4KPgo+IEkgZG9uJ3Qga25v
dyBpZiB5b3UncmUgaW4gcHVyZSBjb25zb2xlIG9yIGlmIHlvdSdyZSB1c2luZyBYLiAgSXQKPiBt
aWdodCBiZSBhIGJpdCBtb3JlIGRpZmZpY3VsdCBpbiB0aGUgcHVyZSBjb25zb2xlLCBzbyBJJ2QK
PiBpbnZlc3RpZ2F0aW5nIGhvdyB0byBjcmVhdGUgYSBrZXlib2FyZCBtYXAgdGhhdCBjb252ZXJ0
cyB0aGluZ3MgbGlrZQo+IE1vZDQraCB0byBiZSB0aGUgbGVmdCBhcnJvdywgTW9kNCtsIHRvIGJl
IHRoZSByaWdodCBhcnJvdywgZXRjLgo+IEhvd2V2ZXIsIHRoaXMgaXMgc29tZXdoYXQgc3lzdGVt
LWRlcGVuZGVudC4gIEl0IGxvb2tzIGxpa2UgdGhlcmUncwo+IHNvbWUgZ3VpZGFuY2UgaGVyZQo+
Cj4gaHR0cHM6Ly93aWtpLmFyY2hsaW51eC5vcmcvdGl0bGUvTGludXhfY29uc29sZS9LZXlib2Fy
ZF9jb25maWd1cmF0aW9uCj4KPiBwYXJ0aWN1bGFybHkgaW4gdGhlICJDcmVhdGluZyBhIGN1c3Rv
bSBrZXltYXAiIHNlY3Rpb24uCj4KPiBJZiB5b3UncmUgZG9pbmcgaXQgaW4gWCwgdGhlIHNhbWUg
a2V5bWFwIGlkZWEgbWlnaHQgYWxzbyB3b3JrLCBidXQKPiB5b3VyIHdpbmRvdy1tYW5hZ2VyIG1p
Z2h0IGFsbG93IHlvdSB0byBkbyBhIGNvdXBsZSBvbmUtb2ZmIGtleXMKPiB3aXRob3V0IG1lc3Np
bmcgd2l0aCBrZXlib2FyZCBtYXBzLCBpc3N1aW5nIGEgY29tbWFuZCBsaWtlIG1hcHBpbmcKPiBN
b2Q0K2ggdG8gZXhlY3V0ZQo+Cj4gICAgeGRvdG9vbCBrZXkgLS1jbGVhcm1vZGlmaWVycyBMZWZ0
Cj4KPiBJdCBnZXRzIGEgbGl0dGxlIHRyaWNreSBpZiB5b3Ugd2FudCB0byBkbyBjb250cm9sK2xl
ZnQgb3Igc2hpZnQrbGVmdAo+IHNvIHlvdSdkIGhhdmUgdG8gaGFuZGxlIGVhY2ggaW5kaXZpZHVh
bGx5Lgo+Cj4gSG9wZSB0aGlzIGdpdmVzIHlvdSBzb21lIGlkZWFzLAo+Cj4gLVRpbQo+Cj4gT24g
RmVicnVhcnkgIDgsIDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+ICAgwqDCoMKgIFNvLCB0aGlzIGlzIHNvbWV0aGluZyBJJ20gd29uZGVyaW5nLgo+Pgo+
PiBHaXZlbiBJJ20gb24gbXkgbGFwdG9wIGN1cnJlbnRseSwgSSdtIHdvbmRlcmluZyBob3cgZWFz
eSBpdCdkIGJlIHRvCj4+IHNoaWZ0IHRoZSBhcnJvdyBrZXlzIGZ1bmN0aW9uIHRvLCBzYXksIGNv
bnRyb2wrc2hpZnQgYW5kIG1heWJlIHRoZQo+PiB2aW0ga2V5IGJpbmRpbmdzIHNvIEkgZG9uJ3Qg
aGF2ZSB0byB0YWtlIG15IGhhbmRzIGVudGlyZWx5IG9mIHRoZQo+PiBrZXlib2FyZCB0byBkbyB0
aGluZ3MgdGhhdCB0aGUgYXJyb3cga2V5cyBkbywgbGlrZSBuZWF2aWdhdGluZyBhCj4+IHdlYiBw
YWdlLCBzZWxlY3RpbmcgdGV4dCwgYW5kIHNvIG9uPwo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

