Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 249A660E76
	for <lists+blinux-list@lfdr.de>; Sat,  6 Jul 2019 04:05:43 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 732ED2ED2C3;
	Sat,  6 Jul 2019 02:05:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5162F909FC;
	Sat,  6 Jul 2019 02:05:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AAA7F18184B6;
	Sat,  6 Jul 2019 02:05:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x6625cic014701 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Jul 2019 22:05:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 30E39909FD; Sat,  6 Jul 2019 02:05:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx08.extmail.prod.ext.phx2.redhat.com
	[10.5.110.32])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 293C6909FC
	for <blinux-list@redhat.com>; Sat,  6 Jul 2019 02:05:35 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 405EBC057E9F
	for <blinux-list@redhat.com>; Sat,  6 Jul 2019 02:05:33 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id s15so11273392wmj.3
	for <blinux-list@redhat.com>; Fri, 05 Jul 2019 19:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=sN1WXvIT1jTXM4ggAsYVDlGfB9ezvOZpj9mpqwTVicE=;
	b=FVD72c0ur9J8W1gdNwVExDO5iqZbONh1Ql3YsfQ+C4PzRg+bS5fc6s9E896qDhgUix
	bp42UUQINqLivKUs+0Jk7Yfc75gvQd1V32Ri3m9mLDFZO3dAFLKgn7rswP71SLtEXnsA
	sZyqwc7UPj92IQgLhWnNPLlbDg2TeR7rRG6ddyTLS6xf80FE9FHMdmT8ucstJyotq0J1
	1NuKUJslHu8AmS4rhOe5iKfIJFpB7UBse6SBapgLK73yCqR1FqamAURnT7wO1AEaSj2b
	p6pI9q/qexUeWv/pzLvO0zl8IYvIoWXzYmdipy2lIw7uxQgPkycXIOiXrCwXzIepKfwP
	0eNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=sN1WXvIT1jTXM4ggAsYVDlGfB9ezvOZpj9mpqwTVicE=;
	b=b5Q7aUXVtGWjXT4VSxZqVJyZumwgizRoC56f45VNQqz/JAL2J5/kcRvcCwHyKmzIVw
	Zpvw444iuZuIJxYQrNTiOQH+CZJ05QUeVPqiNUAIZyBQlk+P/Yg/REddpTlorjG9r8gG
	kO8lpMyOkwL9zA9Pwl/LLf8oUOkMwKzvnpPYqNxt18h78yfkQCKj8Wwn12J4gKWxDsW6
	s03BDSkyjiDBmjlK+EMTLo5Z2/dwlTqOb6IZNJl/IytaVPCNuztX8l80ELPZVgVrw9mq
	PTviT6/lQjz0wFRo0ZkhG1k0jzeIAztvjg1Xpy8Qul6yZjRuuhXzfk2FIu5LpC1qZhq1
	KKeQ==
X-Gm-Message-State: APjAAAWOLp4ZOE4zldLJBLZ2YzroV90DEHKpc7PRK484jr/8R8pPT1C4
	vIPplJkw9Wg3ahXjJzoTgx82AsKvG4XhCd8HRw4L3P3I
X-Google-Smtp-Source: APXvYqyWRftEn9PA991DdYP4MbOWHGrt92VXUrxtpeFEL8av6Y2V87QdXa6TFc/B+H+kjpPeHRI75zIhe5AktnBQ0tE=
X-Received: by 2002:a1c:f505:: with SMTP id t5mr5111291wmh.67.1562378731771;
	Fri, 05 Jul 2019 19:05:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:5751:0:0:0:0:0 with HTTP;
	Fri, 5 Jul 2019 19:05:31 -0700 (PDT)
Date: Fri, 5 Jul 2019 22:05:31 -0400
Message-ID: <CADj8Jxe3riDFGg4OL1L2h6d0YDyjW-htUNiq14Xe5zQtp74E7w@mail.gmail.com>
Subject: debian missing speech
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.32]);
	Sat, 06 Jul 2019 02:05:33 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]);
	Sat, 06 Jul 2019 02:05:33 +0000 (UTC) for IP:'209.85.128.42'
	DOMAIN:'mail-wm1-f42.google.com' HELO:'mail-wm1-f42.google.com'
	FROM:'hurstseth405@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.161  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE, SPF_PASS,
	T_PDS_NO_HELO_DNS) 209.85.128.42 mail-wm1-f42.google.com 209.85.128.42
	mail-wm1-f42.google.com <hurstseth405@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.32
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Sat, 06 Jul 2019 02:05:41 +0000 (UTC)

So I have two of the debian netinstall iso on my pc when I was
installing in virtual box it could not find the speech when tiping S
to start the speech install.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
