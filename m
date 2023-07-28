Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9217676A4
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jul 2023 21:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1690573998;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OG5F/bG3Sq0zD9GZD3Lqurs7sCLcUiWjfvC35veuzps=;
	b=bFrZAe5odP1SFXRtszkjxj/QeO4b+Gt09Ug1w9T+tuzULUz/6+zlfilTHPclf1i2DbvR86
	Lw3yfreP1dFdxKyWtsFZL2RU7dJAthSxNgiC26CeH05YoCIkDfXOv5wf/mzuphuxCaCNsA
	83oVGZbMloiPTDc/Fu78udbfc2MxosA=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-358-_vX0aOLRNDiVdFMVfkRvSg-1; Fri, 28 Jul 2023 15:53:15 -0400
X-MC-Unique: _vX0aOLRNDiVdFMVfkRvSg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24F891C07260;
	Fri, 28 Jul 2023 19:53:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 429BBC585A0;
	Fri, 28 Jul 2023 19:53:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 926E719452CA;
	Fri, 28 Jul 2023 19:53:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 28 Jul 2023 15:48:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Blend os, Anyone tried it?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1899.1690571166.3172875.blinux-list@redhat.com>
In-Reply-To: <mailman.1899.1690571166.3172875.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:WEyn9kSccAU=;wtxOsM/S6qwOW+erbaNtv5r54+6
 OSGZ6mpRVv3lB4cVx/LKBYXT+Nv+fmRjniVzyN+p/nZm7+Iak75GSAfXgm7Lcdwb113jvAr+e
 lczEYbVL/YJUZLw1wnMZOB4KvcgD+MmuilqA1AEQO8dTkNF11UqZNtWBZlRP/818RMIHptoVV
 RTyG9t4SGnZlPk5q2Ac9NcXBzNCCQb5Kh68BjeoMhZsOXOt99PsGLUxYD3UwNkI+K5FTh5biy
 9lkYjVcIp+L64gOK8e9/N6mHw8rGrraFjFIJLEUyP/vKCqDJzsPhCSH/stEOwxF9/GzckQSyM
 mGGC18/EuNEFX+OGP2vwmA5+34tgvWhFej2KaGP37s2Mw6OwQ2bjHNfm5JbcWh06XnYeKbSVq
 7oAsQqWbDnfkM5Xh3Bin7O1EBCv/5neJYVHQC81uFXWfpt1ltzaU6bWx+KeN4iZLn5fl2e4f6
 rdAVxKzf5ZbjtAK3uuVg2HcS+MGBrJ6WqmiESfBUYEAK1ydt85K93Jfq1cQneTsSvPD+6ZU3U
 xi1TffuTXTswCe/67dCOWl6Z9VOf8xgE6/jGE5saKtmXg5YHKyQaDOP58uWp0b42Y/hEpFbv/
 5T/SvKq9PIcf59kdtvwb4CP91Qk1MTutn3tLY1jBdGdDQhyCDfdQA0o6yeSGMm3yPcoytCct9
 jXl0Jby0PbRCAJN7yzmriWrOCn1IsLtClo5uvjLHVYnN957qftvRrYJR1hnNmaMOKulUFEjtT
 1mLu0/PUW560sBG5JmTpGywxS/IVHs6Zyh3VscOkjtgIrvJdOAKB3TxSmtGj1AxQtOV9QTFeO
 sRdFExmkplvpvaOB39Et447qEanFiPVAQH4VCKT1XcScShaOdiCruzfM+/vzaPXppC44ADjVh
 G5kj8y3GdfYn3x96oJEiB4bME99+/3Md1IA4CAMd8nz2aCs8lt48GppdTz6x66QVb0ghLo+Rq
 claZQSGXBSmGqcmYiFMOvYaiDp8=
Message-ID: <mailman.2036.1690573989.3172879.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I haven't played much with anything these days, been quite busy and just
got a Pi 400 working with Stormux as a screenless laptop. Sounds
interesting though, although if it is in fact based on Arch, I hope they
use primarily the Arch official repositories and just add their own for
the distro-specific bits. Sounds like my next vm project on my desktop
computer.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

