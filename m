Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF38806FE
	for <lists+blinux-list@lfdr.de>; Sat,  3 Aug 2019 17:19:22 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4446385546;
	Sat,  3 Aug 2019 15:19:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 045CD5D6A9;
	Sat,  3 Aug 2019 15:19:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3B2171800204;
	Sat,  3 Aug 2019 15:19:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x73FIs71025763 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 3 Aug 2019 11:18:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 36D2A19C6A; Sat,  3 Aug 2019 15:18:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx10.extmail.prod.ext.phx2.redhat.com
	[10.5.110.39])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3166019C68
	for <blinux-list@redhat.com>; Sat,  3 Aug 2019 15:18:52 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
	[209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1D6D65946B
	for <blinux-list@redhat.com>; Sat,  3 Aug 2019 15:18:51 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id w10so37530174pgj.7
	for <blinux-list@redhat.com>; Sat, 03 Aug 2019 08:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding;
	bh=H//KN7OmM9SuH1as29th4T71htzJJ3ypv1h11/dWoy8=;
	b=it0NkfInTOb0L16rweNY7CfLKhYrytKwNVCIGD3GQ4ezBGfQiuTK/50wRut59fEnLd
	+b/Zt1ILEWKuCyTCvjQayJZT2pYdszj1ySCzFIwNlcqo9c30zFHbfTWTzPp/+oXq5eSB
	Kf7hprzxMdgzJyyOUDyjIPaHnZSSI8GwK82BXbiepepHc4fpDm9lNV1xdYZS84GTcuYD
	Z8TD2617yhEpr18Lok2Jib4FY+ry9pyIrcFpsugoP6W9kH7iKDmHyfWIHA5oOBzMbd9J
	QNQDq7kDyWpHeLB4+70Brp9vDDfT+BWEMM70Va/YSnrOFytEpPIRnyoGxWOzUU0XwMln
	JPLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding;
	bh=H//KN7OmM9SuH1as29th4T71htzJJ3ypv1h11/dWoy8=;
	b=dQLuxG3PwjSgQdXeJMN3Ve9cs0UMa1sI7T0rPez5L8wDkyvW+RJVQ66pDl+sHoNUIu
	OcufK5Ia0FlcJB/QDMOSLslmfu48ZyhGKeMCxV8/RMiMEalmz0WrIdZIB+yOatnIjbyr
	6pf1Qwla7kLYxu9n2d6QR7cfmu31hJl8JQQo3Qff3LH8rEOxGWIX/Pg7Not7HKjj/KrU
	Jx+9Pxgr1m9sSU9IRbMd+afSzsNkybzfEFjVhZktypM82G1e7YMt+WrT77Kl4Y6fz5Ah
	anl0wwFGuwn3efE2GGCVI55ngEoVLtbTLEeugqgKGCC3gxqAmI6Yl+Iy0WyA+pWo1/UJ
	3SiA==
X-Gm-Message-State: APjAAAWKwerPcRGRSE/s2LDFvIv6hlxhOpYkfhanu+/tt3FPAFjhbWo0
	KwhrsYm9YWXQ9j7LgrSXXZ1vvib+
X-Google-Smtp-Source: APXvYqyNyjmGZJEy1OQTFWAc8vPipkU4usokuIcFFcmtRkYjCbAHTApS9h2FM1pu1RbX3NdjWpuiYQ==
X-Received: by 2002:a63:c008:: with SMTP id h8mr128254459pgg.427.1564845530154;
	Sat, 03 Aug 2019 08:18:50 -0700 (PDT)
Received: from [0.0.0.0] ([67.230.224.68]) by smtp.gmail.com with ESMTPSA id
	o130sm135917611pfg.171.2019.08.03.08.18.49
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Aug 2019 08:18:49 -0700 (PDT)
Message-ID: <20190803.151747.718.22@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Using the Voxin update
Date: Sat, 03 Aug 2019 10:17:47 -0500
MIME-Version: 1.0
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.39]);
	Sat, 03 Aug 2019 15:18:51 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]);
	Sat, 03 Aug 2019 15:18:51 +0000 (UTC) for IP:'209.85.215.181'
	DOMAIN:'mail-pg1-f181.google.com'
	HELO:'mail-pg1-f181.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.215.181 mail-pg1-f181.google.com 209.85.215.181
	mail-pg1-f181.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.39
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x73FIs71025763
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Sat, 03 Aug 2019 15:19:21 +0000 (UTC)

Can someone please remind me how to merge the voxin update with the purchased one? I can't find this information again for the life of me.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
