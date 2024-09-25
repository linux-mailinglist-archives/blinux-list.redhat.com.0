Return-Path: <blinux-list+bncBDYPVTOXSQEBBTEQ2K3QMGQEN3L7HLQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 437E2986908
	for <lists+blinux-list@lfdr.de>; Thu, 26 Sep 2024 00:01:50 +0200 (CEST)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-e201a37e5a4sf586934276.0
        for <lists+blinux-list@lfdr.de>; Wed, 25 Sep 2024 15:01:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727301709; cv=pass;
        d=google.com; s=arc-20240605;
        b=jSl/5Ng6qVxn6zQtJ/hjn+IcxVdCMqL6UOhOqB6qmbfTsLkMf1YOK6Ho7f3R6rLNxL
         iQgCBnB5HkB8yR5e04uJtR9n9v5mcNRW6xSQOMy2yBxxlOPMqTJSiT5VXjY3kvMuiQQZ
         z3PDUwa9xdxvDzN3t+zWoAt+NFmisVvAx+D1neSqKLq4kxE/B75FxtkfOMubiUxcbBTw
         o5+Rqm7Iou0pjkzGagZeNauvdT+6eaWAqIyHnl3A+nfGEcjor71S6M7hCQ2+xKuUkwrA
         in1lG0qVWUlvUYqQG9QdH2+gegzWa3AL4EpGo2vUJe8Ig3CnShl9GMKw0bHPzb7w+GZk
         uHoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:cc:message-id
         :subject:date:mime-version:from:delivered-to;
        bh=dPpcmxGBtClfRXE9Jti8hZ16K6PTDkR0p4uXekoamgk=;
        fh=5mLqKaw1DIEHeb1ofBMr5d5nRYL6NTPpFILqHTfB8j8=;
        b=YSe6vOK0e+cc37Xo7j5Nyq7sIJB6KYsmQjbjQ0Jt7hIvlmCQ2xcDYEosTayTTuYfz5
         c8BveYUMtbff6KtXzKEpuzoxBb2dJ01ar8Y9mF2Lrq8HWv0R5HnCytJ5QrIsTGySSnTc
         qjE0evL0yKe+MIz6mk8jgbjuSpCa490lvt3Ek1o5uWlNJxiXzu7uGHfMzgLMOb4hbflz
         ZJk1Qf4z3NkzS1/qoY+655guywEhkOVEA9ltnE6TDlZNpm399a2ofvFyO8fCn0lH13F8
         r41VYv2YGG/vhZtu0XeEwKYvkip7jPM6tCvp0VbWPGS3cgLJ0/aOzocaR7E/ei/XDIYf
         TqIA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727301709; x=1727906509;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:cc:message-id:subject:date
         :mime-version:from:delivered-to:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dPpcmxGBtClfRXE9Jti8hZ16K6PTDkR0p4uXekoamgk=;
        b=LnSbdfiFHaFhMoI+OgiikpWNDGBmkCRCsT9C1ZTgTrPL8xmIL0rUVgncWVPrw4reCv
         1f+kmnFv76KwH6ZgH1vDf+6o1+S5ohJkyxNLXbAMLMx9PdmrTOTrmnCrmdpnop7HMsfq
         FUgO1nhDzhR8OdA7nVb9/dW51lQTNOivixZxUl9y8FO/u+jdvZz+J+BSn3SVIFDo+rNG
         Cjh6qEZngMisJYj8mXxw+sEEcOlbyb0WpngvD9H1NdJpPPQyXWAwfKn5sQlquAD8JFYT
         Xp/Z76YZBfYc4q5iM3iNEtxwVKfHZSIWldCc68UIKuVqRIblzEC5KpkxLz812wFgHrH3
         t0vg==
X-Forwarded-Encrypted: i=2; AJvYcCXy0A2J+2JOKrWe7NPXH0EwWLc7YRB+FrWLXF6GzDoSsj/gcivWFNYLLutxYhMqsNOM87Yt9A==@lfdr.de
X-Gm-Message-State: AOJu0Yw+4nVqKo3QJXM3taOiWHgKrmQzFZvLlilFSEc0o3lt2Ho4Xy4B
	3S22c4H8U5XfVeBsMpECJe0rfi2fYmJFedLrRWwj+zNFQL9aQ7F+8OEZ8VXw0WI=
X-Google-Smtp-Source: AGHT+IEpHKSIfOPeHqOMV+SpG/iq1xqkxOt+JyKRF/RYkVcRpu87JEbQZODs7NQ99LOQBF/reIF8KA==
X-Received: by 2002:a05:6902:218d:b0:e20:269c:f74f with SMTP id 3f1490d57ef6-e24d83bcd0emr3728641276.26.1727301708536;
        Wed, 25 Sep 2024 15:01:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:1887:b0:e1d:d1b:d4fb with SMTP id
 3f1490d57ef6-e25ca1fdf1bls646924276.2.-pod-prod-04-us; Wed, 25 Sep 2024
 15:01:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWdXg0CKkSE11uK1RlzTHyy9CGQl7B6iIpLABpL9fshQWnQ5ikQMRTnwme2qh1wInV7XY13czL8H/NF6Q==@gapps.redhat.com
X-Received: by 2002:a05:690c:83:b0:6e2:50a:f436 with SMTP id 00721157ae682-6e21da55e5dmr35189497b3.36.1727301707474;
        Wed, 25 Sep 2024 15:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727301707; cv=none;
        d=google.com; s=arc-20240605;
        b=dT5ofKHh5KMjybxXf5bGY+D6Eew6OEgzQi0wtNXne34+1LEkqgwt6/r2uHLrTl6l4a
         /oeIZz+x3yiPhW61P0ZdklUgLG03WmI3VliRxF/ZMO9oa30kNlw76Naj9ihncqoBQ9GV
         emNfbkcq+4GhRyiy6fdG8pZRY/n2CdYMAnX6xUzPYIurzFemt36U5bys7LAwVc3mdOUv
         lRyPs0lQ1ECxhEHS33kCkEowcCmja0zTR7VmdkSggVN5vLBbJHIUqKeyclEjNNqQE0od
         Er6d1HqTBy2D7CZmrolminSVVtGh5YFZ4bziHkTmsWCDCJM4BDuEOtp4Pg9hZOt1bVSV
         lZLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:cc:message-id:subject:date
         :mime-version:from:delivered-to;
        bh=CSqXAO/a4eM7khKU+G8rITQ8UzKN1DvMtWRweg6E5xA=;
        fh=lbsdplWaVikppPdhpbmpNv/QLYKZ1HTEvKWNhnLB9fM=;
        b=UlTFOs2/qDWHKpB4Hb6d4n0cULs31vw1/Tvn2GUla/y612HJbtuptF0TeQNsJayxX7
         E1jhI1UyEFr2UThFzJElKkSKG0onTkxhBv/B5unPK2Jix1bXox5nUshSjgA9W8M/T1Wc
         TbvKxe7YYZ9r3HmpK/xl+4IgltacvaAGncbYxkNIngQ/vcbzVa85daJ+6Hl4fVhG4Tue
         coHMphnFPb9r8c9V3CFczUB/GBKvVKja4C05PN4KEU21Lts9k+7ib03haw0RWnQRBZMZ
         uetQfkOrsO/DKCZ1i0Kqq9wljS49naG6nh/nnEYOQzwFtvATY6X7sG8ngsZBWaJdFz38
         3YdA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6cb0f7d8d2asi48660086d6.549.2024.09.25.15.01.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 15:01:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-261-lULwrddHPB6hiwNvsPkZIw-1; Wed,
 25 Sep 2024 18:01:46 -0400
X-MC-Unique: lULwrddHPB6hiwNvsPkZIw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 68D5F193E8F0
	for <blinux-list@gapps.redhat.com>; Wed, 25 Sep 2024 22:01:45 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6606019560AD; Wed, 25 Sep 2024 22:01:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6380119560AA
	for <blinux-list@redhat.com>; Wed, 25 Sep 2024 22:01:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BB59019357BD
	for <blinux-list@redhat.com>; Wed, 25 Sep 2024 22:01:44 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-205-rFqzjfjRPbqqIl1v_7XhXA-1; Wed,
 25 Sep 2024 18:01:40 -0400
X-MC-Unique: rFqzjfjRPbqqIl1v_7XhXA-1
Received: from smtpclient.apple (64.67.55.137.res-cmts.pls.ptd.net [64.67.55.137])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4XDW0N3gFhz17NN;
	Wed, 25 Sep 2024 18:01:40 -0400 (EDT)
From: Jude DaShiell <jdashiel@panix.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 25 Sep 2024 18:01:29 -0400
Subject: tdsr screen reader on chromebook
Message-Id: <625F18F4-2434-46DC-A3D0-DE4ADA672D51@panix.com>
Cc: fenrir@freelists.org
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

I finally got it starting to work!  I don't know if this is possible but wo=
uld like to kill chromevox inside linux so tdsr is the only screen reader t=
alking, control-alt-z has no effect.  I'll try killall -9 chromevox a littl=
e later and see if that works.  My instance of tdsr on linux is in penguin/=
dashielljude/git/tdsr and I would like to move what's needed to /usr/local/=
bin if possible.  After that I need to read contents of tdsr and learn the =
keyboard shortcuts so I can get effective with it.  It needed speech-dispat=
cher python3-pytt and python-speechd installed to come up and work these we=
re in debian repository.  Debian freaked out when running pip install -ur r=
equirements.txt along with pip since pip doesn't take the -u switch.  debia=
n freaked out when running pip install -r requirements.txt worried I might =
break system packages.  Since all of this happened under chromevox getting =
more coherent error output than that to share with this group was not possi=
ble.  fenrir may work on chromebooks I will check that out later.  An ideal=
 setup on a chromebook would be to run in real console mode and use tdsr or=
 fenrir and kill off both the terminal and chromevox but I doubt that'll be=
 possible.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

