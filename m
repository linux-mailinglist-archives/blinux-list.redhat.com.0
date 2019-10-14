Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB02D6C0E
	for <lists+blinux-list@lfdr.de>; Tue, 15 Oct 2019 01:32:09 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A43B5C010C13;
	Mon, 14 Oct 2019 23:32:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12A455D6A3;
	Mon, 14 Oct 2019 23:32:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0800D1803518;
	Mon, 14 Oct 2019 23:31:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x9ENTpKs013114 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Oct 2019 19:29:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 445FB5C231; Mon, 14 Oct 2019 23:29:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx16.extmail.prod.ext.phx2.redhat.com
	[10.5.110.45])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FB575C1D6
	for <blinux-list@redhat.com>; Mon, 14 Oct 2019 23:29:48 +0000 (UTC)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1E95F300DA3A
	for <blinux-list@redhat.com>; Mon, 14 Oct 2019 23:29:48 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id u8so41656639iom.5
	for <blinux-list@redhat.com>; Mon, 14 Oct 2019 16:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding;
	bh=VuWIiHEPy3P4jf4Q79LTxm5tr7A170mAAndFVrDnOOw=;
	b=F9FuQJHe0u0IbzLdkD+gp2wvD5SapyyyfiGOuxd9aJ3d1dPLS709qRlMt48DGL9ZWh
	/NME3Mq0A3ceZz5BML9FyAbYTCVkWSvKXrtC93AgNyOF3rsH+thsWG0LW1+mOelmM3d6
	F2rfVeQdQTZnzOG/XPOk8mcK017LiA+xo7GzvaifqrKI8IKRLuiAfQCVk4ohXr+sUXgs
	1Rah2UueQvwhESi56ZmLCwpwEtAKmZmrEpMXtWy3vtBphiFo4hXPKDMKXPwoDfew/JSa
	nNvuRHyEVpi0brrciAmU04LvTQnA/ab6PGfB7XuxZJJedweXYHQGm8oljzTweiaECaVH
	eKRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding;
	bh=VuWIiHEPy3P4jf4Q79LTxm5tr7A170mAAndFVrDnOOw=;
	b=VlSXCklBCay3pH6bzxlTjV8mX8E51hFnQiUe4CBV1wKzW5Sv3LG3iTQS2M57uLaFFo
	Hc+nI26IK2Q0dJBe6hGJ0ubaQnypohnf0bnWRi8+zwg3WbyYF7jWGPVN0XN5GoCgqm72
	QxAzcaLLt0HGb13c/0sQGLDjKtTF9dH0Sc+75fv9kc1/fKcVEqXRA3/PeZ9LrWnmFxOG
	d2ApBdAMbZb4/Qdrh8RwG8RDno1hBcfMZsD3cTR4emife5RKqiiOEuHEJ5uZt8qc1O0c
	NxyPqRJ5+eXxJ5mykYeFQO231MUrh8kEpcWho85NsCRqjO4o9U3wQDTNsOqfXy1k4FRz
	A3sQ==
X-Gm-Message-State: APjAAAXwbo0BSaCIJeiHHHkeywWrQcZ/4+jcdmQRrA89BdqZnDXDa09s
	QM8v9sUl+S5I4geQRVhuoSiZEVsAFK0=
X-Google-Smtp-Source: APXvYqwsKo36FGyidXAdz8SFHybWJvP/4vRR1asxI3P253pZ28rBfVi9+07m6yifmy73TUwGzrjKnA==
X-Received: by 2002:a6b:c84d:: with SMTP id y74mr20549010iof.170.1571095787144;
	Mon, 14 Oct 2019 16:29:47 -0700 (PDT)
Received: from [0.0.0.0] (184-169-119-58-dynamic.midco.net. [184.169.119.58])
	by smtp.gmail.com with ESMTPSA id
	d6sm1814763ilc.39.2019.10.14.16.29.45 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Oct 2019 16:29:46 -0700 (PDT)
Message-ID: <20191014.232928.711.9@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Unraid, Freenas and Friends
Date: Mon, 14 Oct 2019 18:29:28 -0500
MIME-Version: 1.0
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.45]);
	Mon, 14 Oct 2019 23:29:48 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]);
	Mon, 14 Oct 2019 23:29:48 +0000 (UTC) for IP:'209.85.166.51'
	DOMAIN:'mail-io1-f51.google.com' HELO:'mail-io1-f51.google.com'
	FROM:'captinlogic@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.166.51 mail-io1-f51.google.com 209.85.166.51
	mail-io1-f51.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.45
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x9ENTpKs013114
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 14 Oct 2019 23:32:08 +0000 (UTC)

Has anybody played with these NAS solutions? Can they be successfully installed by a blind user? I think we discussed them before but I forgot the outcome of the discussion. Been considering building a network storage solution.
I have 9 hard drives connected to a debian box via esata and USB 3. However, there's this odd bug or something in the kernel that won't allow me to use more than one esata box on the PCI esata card I have. I thought one of the NAS OS builds might fix that.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
