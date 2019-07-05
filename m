Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D706083B
	for <lists+blinux-list@lfdr.de>; Fri,  5 Jul 2019 16:46:46 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 62E4E85550;
	Fri,  5 Jul 2019 14:46:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 524971001B29;
	Fri,  5 Jul 2019 14:46:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4549818184A5;
	Fri,  5 Jul 2019 14:46:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x65Ejqml008928 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Jul 2019 10:45:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 43E83806BF; Fri,  5 Jul 2019 14:45:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx13.extmail.prod.ext.phx2.redhat.com
	[10.5.110.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4020380A31
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 14:45:49 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E4721308216C
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 14:45:31 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id r1so3882438wrl.7
	for <blinux-list@redhat.com>; Fri, 05 Jul 2019 07:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=aydS1EraLbDh/k6vlSaZGoWppj+PofFTAZ2jU3rCDwA=;
	b=AHkWSni88sDEYmRIifP4WPcQKrs790FntTDB8nUB9oZw/88xzO7OEYKEoiP1i2iABv
	SnHBnPrtFxPy5l29pE99uBRapeMrmp6GDVPBgRmzxapR+yhYmBDlPLSY2V0NKX1SG318
	MnOC1dj+D30n68fHPI7zC9G+C5E15SV69LbJzqYANuhom0dQ4V1Y1Kq75SkPABvNuV3b
	AstEvNwxCQaP59yR8vdo8bxNdoaRlMVP8Jwl/zXwVR4QxnA6HZJFLeiJa2+WuzcLbUKJ
	axHQVdbqrYpZ64scAvZppsBqbXCjvHVSQw8Fy+fZOW2Y8s3224Zdv1CusLmsGtV4jGOy
	4LlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aydS1EraLbDh/k6vlSaZGoWppj+PofFTAZ2jU3rCDwA=;
	b=dFv1gMM56iPARlBYUEMCQhYHpfBnNDFnlIoEgIU4X44kmtm6kNj7r+XW1UMuGUueV/
	YihX1VCQxJA1CR421ieBrVc9kW1fW7NOt6NSivslacZ/R5Q5orBjcUH6Qy3Dq73wumgp
	wKTIIk/+sNgE3rEuhNoDsIgBYurdnGLYecCISjqGLFdIxIz4xtxYUr3x5YBU12A0mz2C
	TnjPc1n8hqmcuoirkpBShNAoVww69Z2kep425YJ/ski9k6zC3Ul8Epxaw5DFWlJ5YhtD
	wND+lYBc0SKNupCZMj5kHJoY+nJZXsKVqsTZaaHKNMANjgIKXB5tuE8QMguXmG7DgOrf
	UfcA==
X-Gm-Message-State: APjAAAUFSoxwlY0NGXmZaSnvhqcGHi0yXH7OgtN2+FfDn6hEe9967JGt
	6Dur38fPQRzIRJ72CDeQBxa+BByTW8mHFW8/axc84DZH
X-Google-Smtp-Source: APXvYqxhJsTbdI2ktsL3RYWIxxsO1UkwcoE/cAJqZTAr6qI8vZjCKo+TX5DgPSmGSWM2n6lyzd1nTDXR03uyJjX6qVk=
X-Received: by 2002:adf:f0c6:: with SMTP id x6mr4333904wro.175.1562337930318; 
	Fri, 05 Jul 2019 07:45:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:5751:0:0:0:0:0 with HTTP;
	Fri, 5 Jul 2019 07:45:29 -0700 (PDT)
Date: Fri, 5 Jul 2019 10:45:29 -0400
Message-ID: <CADj8JxcndH0PhbTYUGe-J8sYf_JOUWfTHxEfVKEn4Ao6j7d4pg@mail.gmail.com>
Subject: linux install recordings
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.42]);
	Fri, 05 Jul 2019 14:45:32 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]);
	Fri, 05 Jul 2019 14:45:32 +0000 (UTC) for IP:'209.85.221.53'
	DOMAIN:'mail-wr1-f53.google.com' HELO:'mail-wr1-f53.google.com'
	FROM:'hurstseth405@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.161  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE, SPF_PASS,
	T_PDS_NO_HELO_DNS) 209.85.221.53 mail-wr1-f53.google.com 209.85.221.53
	mail-wr1-f53.google.com <hurstseth405@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.42
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Fri, 05 Jul 2019 14:46:44 +0000 (UTC)

There are two recordings I am trying to find there of this blind
person from the uk doing a install of arch linux and a blind install
of gentu. I'm interested in the gentu version.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
