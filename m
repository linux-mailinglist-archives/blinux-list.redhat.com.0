Return-Path: <blinux-list+bncBCW5NIVR6ABBB6PDQWVAMGQEVQM2BPQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 2181C7DD7C1
	for <lists+blinux-list@lfdr.de>; Tue, 31 Oct 2023 22:30:35 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41cd46aa351sf72378711cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 31 Oct 2023 14:30:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698787834; cv=pass;
        d=google.com; s=arc-20160816;
        b=n6xJyk+L4PThkq3kmtLhnW2wvo+fTC7yMJADgRZ+XStQo2Hw3C81+hwNYUNzFj1icT
         RTuLqQQichX3ksd4y1hAZJ1GWeXI4D8On7GuGCdKhApgG0D6eTFV35ZdwHYggZeRph+w
         8HHpMPwm6hjA2pHSJ67tFwOAKgMW7DC8YhLV9g7GdnystqVSCHYxzZ3MaiL5hDFcajCL
         d2XW9vZXx3wznj9OmqYxQrCKsvPexY40TJm2Ws2GMhsAN5udTixOqb+Qpu1gLESR4SeC
         VqCc/xiTiQHmvMe471ptnR6UAb1Qbxp/xvYZmQPQ5p2DqfltbXjrQuSaCxYcCziG7oRb
         ZXMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:date
         :message-id:subject:mime-version:from:delivered-to;
        bh=6FdGHX5JSI0khOlEHZRljJXWxlW7n3YM7QiLi3xF4ig=;
        fh=GpVcGwPIMuDABkc/gGm4HoDROOiSzx/8UNerXWdHcC8=;
        b=YFxwHyrbCy1Dd4Pgat/TYfdEEuY7q5nuZevRgl/TErK/ftE45y7SDI4x6o6G3m0Ac1
         CK3muT6Wvjani1yBziuGb7QHyJ6H8TyiI6S2jkQUsoUJhgW4HEhoLXhaQWqiWgOgZvg9
         CiieExzThX/gURVrpxWutLOoWIh11RaIzKwEqZQn92r8tfIfu9/6jJV5rNcjdX41DwnT
         IbWQeU4nZRbcxedpcMSLDHn+2/Pq/eCBA+c/mkENa2n1VY+SGdsHmREzJqWo+o8vwV1N
         6v3wjd48/9MnYUDNn7cH1iB2r0vWbOxF1j4NuqG4IGASoX5Kdej78BsUmCEjQmnNTn7D
         ZmiA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.49 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698787834; x=1699392634;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6FdGHX5JSI0khOlEHZRljJXWxlW7n3YM7QiLi3xF4ig=;
        b=Vzg4bYJDdR031VSssWJYi+A/LwmfM4UUXjmieg1xQcLX07gAPk22cynexrToA46x9D
         g6NtJb/LYQ93YJ7EyQs6g4SSsTwDEhjYIvUfO+0YQbFrQpHAjWmocH2oNu+Z57uJMMgO
         trGj72V7fxwmGBQFmDgCD8xgg2D9Jl60hyiy1DnFMXG/r03LllzHpmB4uC/LbthefQk0
         20MNPv1+RN6+wfAoShckcVZWSOAK8jEeAE1OySPURiP4ygFrsZD3n49d4zqNIoi4WJJI
         TKxxaSlLO4FIxltau62FOZlfaBbKViOhLPTJl95LTlC07nlQKxtyozdyVtOLBmIOlVwq
         6E0w==
X-Gm-Message-State: AOJu0YxzE7k/OGLrbI3Dt3rW11tIPuz7m3cnJdPR1x/sWLB8GvRFuagv
	v1UpzQFAyfAvGUkdjCxY7moZjQ==
X-Google-Smtp-Source: AGHT+IHeTkbvhBJvL2lQ3FrARv1BtKLohbSpbEfLrIN4UEPp3SoRUYV2JwDzv4bwbFc1j/10xMOHuw==
X-Received: by 2002:ac8:7f8e:0:b0:417:8f5b:f896 with SMTP id z14-20020ac87f8e000000b004178f5bf896mr18039157qtj.55.1698787833590;
        Tue, 31 Oct 2023 14:30:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:8085:b0:419:8cd5:bd4e with SMTP id
 js5-20020a05622a808500b004198cd5bd4els693766qtb.0.-pod-prod-02-us; Tue, 31
 Oct 2023 14:30:33 -0700 (PDT)
X-Received: by 2002:a05:620a:bce:b0:774:12ae:99be with SMTP id s14-20020a05620a0bce00b0077412ae99bemr16201731qki.44.1698787832862;
        Tue, 31 Oct 2023 14:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698787832; cv=none;
        d=google.com; s=arc-20160816;
        b=IodkTfSViybdG9nn5nSn74SS2xdXBnCNqXokqKaAn4JRiude7LZ7FwGD3LzLkE60Ct
         WPXxHZHHe1/MVAkt2DSfIiMg4/QLkPOhqCRP4DdvCG+LDTj6SWVNFbVTBIk2ESkUf6fS
         iXRP0dk9Mdaf+355Ax5wVXgxTL8LBb9rqz0wJWT5Aj4KtsD0h1mLcpdpQtdKnX7bKdWh
         r96nipiO+U7CSd9PO7Cz+27TPJCjHc4qZd4lADhhRhxX0wa+zoCt1fAEeVzoeWw+9vau
         0jhWUF8FjTkP1f2/MtsKv4JWw5+L1NuIw1DZg/R8xG9CggTac8oaGkpc9KET+hYPDQvT
         uQAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=s+DqWmtE66NNoXZshDHzB25Xa5toJ1we1vOdi5evlhI=;
        fh=GpVcGwPIMuDABkc/gGm4HoDROOiSzx/8UNerXWdHcC8=;
        b=Sljvi8okki8HWCTXVFlqxi5hstq/xd0FONl/YguIPtmsko5uE47ZcUoJLmeiqlR9UA
         TBRoK/Kb/4r/PlGy6LcGfToRoDb5ng1AszJ696jycGj6W2F8Vbb+MguVtH5rkRqqP6eX
         obSokEkeSfsqC1H56UoXCFUYIP7KRigXsQJ1BBQw1vMYbuoH2O3wtvYTL5LkyltbHXTK
         rBGMCuo7rGmMjApf/7//x0TuovLY0BypyXLb5NJgQ8X07nMYqy2KYlmoFOSyFji0ama8
         NpqyHnOuySQpNhZ6Cps4nXzb+BhcW1JayahsiSjATMh+kXYoVeRlsbGrjNBKNIyYUtvm
         DfiQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.49 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id ea19-20020a05620a489300b007742b023d3esi2250499qkb.99.2023.10.31.14.30.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 14:30:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.49 as permitted sender) client-ip=209.85.208.49;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-623-mvMLajEuPpuzUuQ4AcymFg-1; Tue,
 31 Oct 2023 17:30:21 -0400
X-MC-Unique: mvMLajEuPpuzUuQ4AcymFg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D17D381258F
	for <blinux-list@gapps.redhat.com>; Tue, 31 Oct 2023 21:30:21 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 27DB1492BE9; Tue, 31 Oct 2023 21:30:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E504492BE0
	for <blinux-list@redhat.com>; Tue, 31 Oct 2023 21:30:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDDFC29ABA35
	for <blinux-list@redhat.com>; Tue, 31 Oct 2023 21:30:20 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-466-rvT01s-rNS-w2e4G1cEprw-1; Tue, 31 Oct 2023 17:29:55 -0400
X-MC-Unique: rvT01s-rNS-w2e4G1cEprw-1
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-53e751aeb3cso10114184a12.2
        for <blinux-list@redhat.com>; Tue, 31 Oct 2023 14:29:55 -0700 (PDT)
X-Received: by 2002:a50:aad8:0:b0:543:6444:ef2a with SMTP id r24-20020a50aad8000000b005436444ef2amr2231100edc.32.1698787793858;
        Tue, 31 Oct 2023 14:29:53 -0700 (PDT)
Received: from smtpclient.apple ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id h20-20020a50cdd4000000b0054358525a5bsm130547edj.62.2023.10.31.14.29.51
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Oct 2023 14:29:52 -0700 (PDT)
From: =?utf-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
Subject: Battery status for bluetooth devices
Message-Id: <3197AB96-E32E-4196-AA77-237AAADCD23A@gmail.com>
Date: Tue, 31 Oct 2023 22:29:40 +0100
To: Blinux Konference <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.208.49 as permitted
 sender) smtp.mailfrom=vlcekpavel93@gmail.com
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

Hi,
is it possible to detect batery status for connected bluetooth device? I th=
ink Ubuntu can do it, but I have Fedora 39 and Arch Linux and when I connec=
t my wireless keyboard or headphones, I can not get the battery status in a=
ccessible way. So is it possible in Gnome desktop? All other platforms, esp=
ecially iOs and Windows 11 can show battery status in widgets or bluetooth =
settings.
Thanks,
Pavel

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

