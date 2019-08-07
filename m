Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 064D384B2C
	for <lists+blinux-list@lfdr.de>; Wed,  7 Aug 2019 14:06:15 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3CC81309BF17;
	Wed,  7 Aug 2019 12:06:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E543A5C231;
	Wed,  7 Aug 2019 12:06:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 052802551B;
	Wed,  7 Aug 2019 12:06:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x77C68r4031430 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Aug 2019 08:06:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0AE42608AB; Wed,  7 Aug 2019 12:06:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx14.extmail.prod.ext.phx2.redhat.com
	[10.5.110.43])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04B9760852
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 12:06:05 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 77651300146E
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 12:06:04 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id d4so86015027edr.13
	for <blinux-list@redhat.com>; Wed, 07 Aug 2019 05:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=mR4OTwRPWujx9iqW01HLV2tGNY7VJOqp9HFO+i0d0XQ=;
	b=PoNiu8ZyPi46j9QKBSleScZ1wtGRAo0LpC+06f84vEVMdM+o1ED/KJFSLl9J6+J0kP
	sT//8hR+i0H95/hoc72ja88mMVepdMgfAZlBP4iNkkqxI26sovXQ1bP07fX+iwdCLUhD
	KZ/+O+jG6M2l3TPguK4ile7dC2BzJykPOyrJeO6zgaApaRKGEtinBTw4XZQxPKU7No+B
	g12NQHR+jqNok6HOiyQiQBC6UrSrbGF8ZCKz5Bejt4iJi3SKiR6WQBzAxrhMACeXX3s9
	QzMfKJV/WRUW1CEydtSD7u0JVSI8aC0YWB3B5T6LDOrv6lZiiprtKFx53qVnmMa2PpVA
	/r7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=mR4OTwRPWujx9iqW01HLV2tGNY7VJOqp9HFO+i0d0XQ=;
	b=YUDmfPAIQjfmWmxMqB4HQ9VlnwJtwZz+ioL674us7ogl6twTHypS2U744DIawiHgIw
	PMdkxyFcp7DxYBmzlxz5GQ3CBy87YBOhnO7Sc26yXlN2smCrvdFcUC9ONwMpPsiRH1Bx
	M/DajThVHhk035rtvPb2VGJhKKw5waOIx/LZ/fqz6KFjuS65YN2FzolPo9tdeqPGbVNs
	USVIgDOVeufWnHYeWEGdZXiUiY+65Kxy7/LQ/93kvj3xN1cRkgBgoS2Nl1O0eAD7N8zm
	z+dZcNNoad/rQDypnefo9dEwofX/IlJv6LJIPsjIXQXVQaSZU/9tFEoEd4LP4NPQDmsm
	bv7A==
X-Gm-Message-State: APjAAAWi8vsoKKD/i7220SR/JRVLIBeth3QWESL+wuJDS2evM0v9if8N
	7Tb2MaAZgjgRLL0ICVVT5jrtr5HV
X-Google-Smtp-Source: APXvYqyQ+O17KydR/cH1dbiUAfTXSfiX7Ep6MTKARQRw8Ip2y7fDk1u5BEJSuRq4b9QnGgT9IfGTEw==
X-Received: by 2002:a50:a3f5:: with SMTP id t50mr9258595edb.273.1565179562871; 
	Wed, 07 Aug 2019 05:06:02 -0700 (PDT)
Received: from [192.168.0.13] ([45.222.2.216])
	by smtp.gmail.com with ESMTPSA id
	w24sm21340916edb.90.2019.08.07.05.06.01 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Aug 2019 05:06:02 -0700 (PDT)
To: blinux-list@redhat.com
Subject: Contracted Braille in GUI not working
Message-ID: <8ddbff64-9c2c-ed56-14d0-3435b7ce4991@gmail.com>
Date: Wed, 7 Aug 2019 14:05:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.43]);
	Wed, 07 Aug 2019 12:06:04 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]);
	Wed, 07 Aug 2019 12:06:04 +0000 (UTC) for IP:'209.85.208.50'
	DOMAIN:'mail-ed1-f50.google.com' HELO:'mail-ed1-f50.google.com'
	FROM:'brandt.steenkamp@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.208.50 mail-ed1-f50.google.com 209.85.208.50
	mail-ed1-f50.google.com <brandt.steenkamp@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.43
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Wed, 07 Aug 2019 12:06:13 +0000 (UTC)

Hi everyone,


I got contracted Braille to work just fine in the console, and I 
thought, fine and dandy, everything should be cool in orca; but nooo! I 
did some research, installed every liblouis package I could find in the 
Ubuntu 18.04 repositories, rebooted my system to many times to count and 
still no way to enable contracted Braille? What more can I do! Help, please.


Google is out of answers!

-- 
Warm regards,

Brandt Steenkamp

Sent from Ubuntu 18.04 LTS

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
