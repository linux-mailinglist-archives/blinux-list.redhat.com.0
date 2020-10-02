Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id B3EDF280E05
	for <lists+blinux-list@lfdr.de>; Fri,  2 Oct 2020 09:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601623706;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=dgGXPuy3Co9bYTQy3e4wgXPvdIUGRZUKnS4Umjdv1Nk=;
	b=RCnk4NeqDXyJ2CGVMgStd6yxTKM6mcL1hsh3B+Oy5ozw/DGS8Gvwm9wP5skkBLk9L2m5S6
	BFvs32Cwx/zRH0pNtM+LlveLTtKGbNr45dU7ardph9J53dpVP6LbuKZ+0627Swp/qU4W2R
	id7HikQROwpI7TPsipYYY35/T/HRRno=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-HtqqiYfJPOyV1Po6Z-zXrg-1; Fri, 02 Oct 2020 03:28:25 -0400
X-MC-Unique: HtqqiYfJPOyV1Po6Z-zXrg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D4AD6124B;
	Fri,  2 Oct 2020 07:28:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6749C5D9D3;
	Fri,  2 Oct 2020 07:28:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 33DCF44A4A;
	Fri,  2 Oct 2020 07:28:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0927S3Of032687 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Oct 2020 03:28:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 365A51108E0; Fri,  2 Oct 2020 07:28:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 311E31108E7
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 07:28:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B93318A070D
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 07:28:01 +0000 (UTC)
Received: from sonic306-1.consmr.mail.bf2.yahoo.com
	(sonic306-1.consmr.mail.bf2.yahoo.com [74.6.132.40]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-346-gxvGZ8R1NNearGUa6AAhlw-1;
	Fri, 02 Oct 2020 03:27:59 -0400
X-MC-Unique: gxvGZ8R1NNearGUa6AAhlw-1
X-YMail-OSG: ZjS1XsQVM1lAnK9nd8Z6F0c6FxKYGiUswRKTe5rotrSPpBUzRIWdNuQVP_XV5oe
	Qrsz6ohwDsggUM9SCVuh3HWJkJ.kenH5VqFrW0FOzrajsVUIifU.JnIjDa9jNzOl5Wr6PovKcnAK
	dNI5NNok.hHaVfXHOR3iLiQMjWma0bnmakTPg_IbFrV.w.lf0oO3q8kKsn6.MmFBWY4PyO69j672
	5QmWnQQejDgwUnYMIfFY06IhJqzamMxE6T00VEu7cvU.lrFw3I7b3Zr.wSHIk3g0z5vLlp3lRF4r
	EX1_gGpABpr31jJDm2MTT.LN7xRkYnNpZZM0lUOQzR88NkoAVcmSTWTrDzZD5W.RWM8pd.gWDQMA
	VMklFDTUq0Ah3G6QZzPb8LU3jT0nPpVtq50R8zNkL1UTH3tqfRwX_9sTMMk5VhMgYxhKPJ_a6d1d
	smCHXyR9cy2H3yHOejy33AjBAqlZLB82kKU6LQouTPBzAHxRz6.OLFm4mTpELS5TWUZZFSN_G2Ng
	Y5R.Fv87HUuq3liyA75W7k2yaunRTFhscxm9w7AwA_545E5RZuZfrxLMnJ8R8bp1jBfYLMMjB6dt
	xp0rvhltJxMklSxui9h3vV9E8jBf.iRDqOl1uTf.CgeK7fH3LlOEnMI_IgXjiBUNqo1DmtgQu8Nq
	GMp.q0eQDsebGm7HdeZaHVla_j7HCaZ02uJyWfpyx6rsJU6Ciy9tMMAQ7pjEgR1npT25D5RPOWCq
	DN6ouWUm.IAxzRLmd_DYnoKHnEieMnwsmrpGxMMMJgSXpvZZNGuAZiPaip269S5l4Vx5pLl6bNNh
	sYKa.V6nXmQ.8jtyQMhYQ9KwckdGOZ5bryGs_KhQUON0G4nqMYz2faWekUVGSToS2ePjMtQf3Ahb
	Y0Za53g4jLoGVji.LXglNxwbtuwN_okaFwyOtTk3olKv0Ngbu0Th3ah0Q9euTsE3hZ2wvQX47jfc
	PSDQwKMRKvD0HIASn9KDRslxI4RUxLb40Xs0BohCxWFuNEnHEbnn8GARHP3C.f.BB6bDkyuRH39p
	NuHuj5C4YAc8nDiZVMFSTsgHJpT10lC5bLbnZXm3x9oADvynUoC67F7iAOYe4DS5KGEkHJIDkibO
	.RE8RFBhYUYOw8cCfv4jBOBXv_6H86QJfiVFCjE_oYZ8KLV9R_F7tHul6MliLPss0iBKMjHfyLsr
	YEQYzW65BifGNdb0BSE5G2OsWYIhl5lMv5NV9SrAcrfjAlw7r4GGkZlUOrM5wzwEkx08Y6rdM2b_
	_vPHNGNraYgTizk24iXH2WfHv2sNbKvptlVdKm2s_6Lsu4dl5xW6dKx0j72XzrPY4qKD52A.kGh_
	MIgrY.uCLFYy2yAFO67z.cJkbwcG4qTpNGo0PJT5AxYY8rx5PYpHFx2V3mzZrWtcgVXVMITLFWcc
	LgDBsaePhClNBSVmhcrPwoFRoraq1bvKU4BXfxpZppLsO0BXvNUE00XvGb5LcD3CaMIpd1YRo.Z2
	um1q0
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic306.consmr.mail.bf2.yahoo.com with HTTP;
	Fri, 2 Oct 2020 07:27:58 +0000
Received: by smtp414.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 5044de4b49b1ded471251849baec3482; 
	Fri, 02 Oct 2020 07:27:56 +0000 (UTC)
User-agent: mu4e 1.4.13; emacs 28.0.50
To: Blinux-list@redhat.com
Subject: Continuous reading in Emacspeak and Cursor Movement
Message-ID: <87ft6xoznv.fsf@yahoo.com>
Date: Fri, 02 Oct 2020 09:27:48 +0200
MIME-Version: 1.0
References: <87ft6xoznv.fsf.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I am used to continuous reading in Orca whereby the cursor moves along
with the speech. In Emacspeak, however, I don't seem to get this
feature. So my question is: is there any way one can do continuous
reading while cursor is moving? I would prefer to have a cursor
positioned at the place where I call the pause or stop functions.
By the way, I use C-E n (Control +E and n) for continuous reading. The
frustrating thing is that even after reading a big chunk of a document,
once Emacs receives notification, I have to try to find the spot where I
think the last word spoken was. I think it may not be the optimal
situation for reading or reviewing documents.


If anyone is using Emacs, please can you share how you deal with reading
documents? I am open to any ideas for this situation even if it means
using any other screen reader  other than Emacspeak.

Thanks in advance,




-- 
Ishe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

