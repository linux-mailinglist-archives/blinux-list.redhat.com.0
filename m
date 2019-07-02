Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8805D73E
	for <lists+blinux-list@lfdr.de>; Tue,  2 Jul 2019 22:03:28 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D7E723087929;
	Tue,  2 Jul 2019 20:02:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D4473100194A;
	Tue,  2 Jul 2019 20:02:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 48CCF41F63;
	Tue,  2 Jul 2019 20:02:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x62K1aSP023697 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Jul 2019 16:01:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8F0FD196F7; Tue,  2 Jul 2019 20:01:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx15.extmail.prod.ext.phx2.redhat.com
	[10.5.110.44])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 893AD4119
	for <blinux-list@redhat.com>; Tue,  2 Jul 2019 20:01:34 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
	[209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 01FF8308338F
	for <blinux-list@redhat.com>; Tue,  2 Jul 2019 20:01:20 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id p197so24220lfa.2
	for <blinux-list@redhat.com>; Tue, 02 Jul 2019 13:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=r3IiJJVRDYrf4jrZdrfjd4oTGj8BUkjvSNFcA7u1IEU=;
	b=kPA1kdVhbXv2TchqVAarAne6vuAX1ZYIi5TDy/VxmpRTuA2eXwXwaLflCfgtdt1Y1y
	2Dfkocby6Z9gbyZgtkuftv7I262pARl/5tgbIZ6JQYtsl7ewZDGMi9TZHOAxwwinVCXK
	RvdbTAmBSTeTU2XUQCMyzKCxkUXBIyRRA2DexKvOjKZXKrnEiPbECe4aPprOsd1UnmHu
	rWmquv6Xp8wkSVNmqeQZbgnJ+OhUQim1zMcnFPNMig8c+oAZmm/GUlRHHDHzQXIMTZ+U
	cfC0hnsAaPGIRiC6mxDL5TFXQwy+S5w9SFNUvB71GqRLdk/2t4x97D2rSkJ8jJE89TcY
	LTMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=r3IiJJVRDYrf4jrZdrfjd4oTGj8BUkjvSNFcA7u1IEU=;
	b=PC2GZLcwRYZpwUBjEAdonTMBjU8YK2KEX3hzZhZbh2WoHmVo/F8TSlcBm7XHNClAvL
	3VdqaGG1Lv621D7N5xRELucCIrtni7ADSJ2YSpiMgGRgpoHW3503vCOc3yKowRvgQ2el
	bzxKhGdMFDCCptxGrrp1mePVs/STar4c9D3+Q+RGS2L9cqdNu2Z8xbkwn1YBWRomkB8+
	CyOhG2782J1ea+QLrUlUZloSKyRvsRHMY8J+jrU5/StqEZh6U/2qB4gB9nIVA5iYXEK0
	BjYXqp4A1AO+QoqW7DUdQh73+vh4XMtzZLdeD7M/flZajpRmeXEZ6BN4vihd0AWGMlZk
	oi+w==
X-Gm-Message-State: APjAAAWdguS7cOzoHZTJuKeym3st9uTAmmwK0hyezPIq8e4spRfcjU65
	uyPDXAIrSFl7yLoOUI7tNzuU0Xj5KM4=
X-Google-Smtp-Source: APXvYqxPZzXuRoDtkskNH3TCGcBL9Uy3A3VjDiivFdg+cKrZ4ATjwUu4wRVqlNmj3yndT3KzW0JmVg==
X-Received: by 2002:ac2:4243:: with SMTP id m3mr10558692lfl.9.1562097678135;
	Tue, 02 Jul 2019 13:01:18 -0700 (PDT)
Received: from [192.168.1.189] (81-228-143-85-no527.tbcn.telia.com.
	[81.228.143.85]) by smtp.gmail.com with ESMTPSA id
	v14sm4012678ljh.51.2019.07.02.13.01.17 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Jul 2019 13:01:17 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: galliumos
Message-ID: <092f35da-389f-de6b-d4e3-3126e379350f@gmail.com>
Date: Tue, 2 Jul 2019 22:01:15 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: sv
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.44]);
	Tue, 02 Jul 2019 20:01:20 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]);
	Tue, 02 Jul 2019 20:01:20 +0000 (UTC) for IP:'209.85.167.47'
	DOMAIN:'mail-lf1-f47.google.com' HELO:'mail-lf1-f47.google.com'
	FROM:'mjonsson1986@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.141  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.167.47 mail-lf1-f47.google.com 209.85.167.47
	mail-lf1-f47.google.com <mjonsson1986@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.44
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Tue, 02 Jul 2019 20:03:27 +0000 (UTC)

anyone tryed this on a chromebook?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
